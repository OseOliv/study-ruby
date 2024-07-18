# Criar um script em Ruby que possa ler um conjunto de pedidos
# de compra e calcule o valor total da compra. Cada pedido é
# composto pelos seguintes campos:

# Número do pedido;
# Preço unitário;
# Quantidade.
# O script deverá processar novos pedidos até que o usuário
# digite 0 (zero) como número do pedido;

numeros_pedidos = []
precos_produto = []
quantidade = []
soma_valor = []

loop do
  print "Digite o numero do produto: "
  num_pedido = gets.chomp.to_i
  break if num_pedido == 0
  print "Digite o preco do produto: "
  preco = gets.chomp.to_f
  print "Digite a quantidade do produto: "
  quant = gets.chomp.to_i


  numeros_pedidos << num_pedido
  precos_produto << preco
  quantidade << quant

  soma_valor << (preco * quant)

end

puts "O valor total e: R$#{soma_valor.sum}"
