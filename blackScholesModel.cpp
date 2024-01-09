#include <string>
#include <iostream>
#include <cmath>

using namespace std;



int main(){
    double C;  // Call option price
    double N;  // Cumulative Distribution function of the normal distribution
    double St;  // Spot price or current price of an asset
    double K;   // Strike price, price at which owner of option can exercise rights
    double r;   // Risk-free interest rate
    double t;   // Time to maturity or expiration
    double o;   // Volatility of the asset

    double d1 = (log(St/K) + (r + (pow(o, 2) / 2))*t) / (o*sqrt(t));
    cout<<"Hello World"<<endl;
}