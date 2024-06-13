// // double C;  // Call option price
// // double N;  // Cumulative Distribution function of the normal distribution
// // double St;  // Spot price or current price of an asset
// // double K;   // Strike price, price at which owner of option can exercise rights
// // double r;   // Risk-free interest rate
// // double t;   // Time to maturity or expiration
// // double o;   // Volatility of the asset

#include "crow.h"
#include "cpp_redis/core/client.hpp"

#include "blackScholesModel.h"

#include <iostream>
#include <string>
#include <sstream>

using namespace std;

int main()
{
    crow::SimpleApp app;

    CROW_ROUTE(app, "/")([](){
        return "Hello World";
    });

    CROW_ROUTE(app, "/works")([](){
        return "I am working";
    });

    CROW_ROUTE(app,"/count/<int>")
    ([](int count){
        return crow::response(to_string(count));
    });

    // example request: curl -X POST "http://0.0.0.0:18080/bspm" -H "Content-Type: application/json" -d '{"St":62.0, "K":60.0, "r":0.04,"t":0.11,"o":0.32,"call":true}'
    CROW_ROUTE(app, "/bspm").methods(crow::HTTPMethod::POST)
    ([&](const crow::request& req){
        auto body = crow::json::load(req.body);
        if (!body) {
            return crow::response(400, "Invalid body");
        }
        
        try {
        double St = body["St"].d(); // Spot price
        double K = body["K"].d(); // Strike price
        double r = body["r"].d(); // Risk-free interest rate
        double t = body["t"].d(); // Time to maturity (years)
        double o = body["o"].d(); // Volatility of the asset
        bool call = body["call"].b(); // Whether it is a call or a put
        
        double bspm_value = blackScholesModel(St, K, r, t, o, call);
        
        std::ostringstream os;
        os << bspm_value;
        return crow::response{os.str()};
        } 
        catch (const runtime_error &err) {
            return crow::response(400, "Invalid body");
        }
    });

    app.port(18080).run();
}