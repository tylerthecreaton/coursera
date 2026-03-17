#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "=========================="

# Get user input
read -p "Enter Principal amount: " principal
read -p "Enter Rate of interest (per year): " rate
read -p "Enter Time period (in years): " time

# Calculate simple interest: SI = (P × R × T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo ""
echo "Results:"
echo "--------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
