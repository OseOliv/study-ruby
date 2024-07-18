# Crie um script em Ruby que leia um valor real em dólar
# e converta o valor para reais. Considere que a cotação
# é US$ 1 = R$ 3,20.


print "Digite um valor real em dolar: "
valor_dolar = gets.chomp.to_f


valor_reais = valor_dolar / 3.20

puts "O valor de U$#{valor_dolar} em reais e: R$#{valor_reais}"
