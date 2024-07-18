# Crie um script em Ruby que leia uma temperatura
# em Celsius e a converte para Fahrenheit.
# Para converter de Celsius para Fahrenheit
# use a seguinte fórmula: F = 9 * C/5 + 32

print "Digite uma temperatura em garus celcius: "
celcius = gets.chomp.to_f

celcius_to_fahrenheit = 9 * celcius/5 + 32


puts "A temperatura #{celcius}ºC em Fahrenheit e: #{celcius_to_fahrenheit}°F"
