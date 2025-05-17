#!/bin/bash
echo "  Simple Interest Calculator"
read -p "Enter the Principal Amount (P): " principal
read -p "Enter the Time Period (T in years): " time
read -p "Enter the Annual Interest Rate (R in %): " rate

# Calculate Simple Interest
# Formula: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount = Principal + Simple Interest
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

echo "-------------------------------------"
echo "Principal Amount (P): $principal"
echo "Annual Interest Rate (R): $rate%"
echo "Time Period (T): $time years"
echo "-------------------------------------"
echo "Simple Interest (SI): $simple_interest"
echo "Total Amount (A): $total_amount"
echo "-------------------------------------"
