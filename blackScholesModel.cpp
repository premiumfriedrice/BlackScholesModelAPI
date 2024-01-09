#include <string>
#include <iostream>
#include <cmath>

using namespace std;

// double C;  // Call option price
// double N;  // Cumulative Distribution function of the normal distribution
// double St;  // Spot price or current price of an asset
// double K;   // Strike price, price at which owner of option can exercise rights
// double r;   // Risk-free interest rate
// double t;   // Time to maturity or expiration
// double o;   // Volatility of the asset

double normalCDF(double value){
    return 0.5 * (1 + erf(value / sqrt(2)));    // N function 
}

double blackScholesModel(double St, double K, double r, double t, double o, bool call){
    // Black-Scholes Merton Model: 
    // C = StN(d1) - N(d2)Ke^-rt   

    double d1 = (log(St / K) + (r + (pow(o, 2) / 2)) * t) / (o * sqrt(t));
    double d2 = (d1 - (o * sqrt(t)));

    d1 = round(d1 * 100) / 100;
    d2 = round(d2 * 100) / 100;

    double Vc = (normalCDF(d1) * St) - (normalCDF(d2) * K * exp(-(r * t)));     // Value of the call option
    double Vp = (Vc + (K / exp(r * t))) - St;  // Value of the put option
 
    if (call){
        return Vc;
    }
    else {
        return Vp;
    }
}

int main(){
    double call_option_price = blackScholesModel(62.0, 60.0, 0.04, 0.11, 0.32, true);
    double put_option_price = blackScholesModel(62.0, 60.0, 0.04, 0.11, 0.32, false);
    cout<<call_option_price<<endl;
    cout<<put_option_price<<endl;
}