#!/bin/bash
# Script para calcular juros simples
# Fórmula: J = P * r * t

echo "=== Calculadora de Juros Simples ==="
read -p "Digite o valor do Principal (Capital inicial): " p
read -p "Digite a taxa de juros anual (em %): " r
read -p "Digite o período de tempo (em anos): " t

interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
total=$(echo "scale=2; $p + $interest" | bc)

echo "-----------------------------------"
echo "O valor dos juros simples é: $interest"
echo "O montante total (Principal + Juros) é: $total"
