# Crie um script em Ruby que leia o preço de um produto
# e um percentual de desconto. O script deve calcular e
# mostrar o novo preço do produto com o desconto.

print "Digite o preco de um produto: "
preco = gets.chomp.to_f

print "Digite o percentual do desconto: "
desconto = gets.chomp.to_f

calcular_desconto = desconto / 100

preco_com_desconto = preco - (preco * calcular_desconto)

puts "Preco Original: R$#{preco}"
puts "Preco com desconto: R$#{preco_com_desconto}"
