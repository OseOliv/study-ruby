# Crie um script em Ruby que leia dois números, X e Y,
# calcule X elevado a Y e mostre o resultado.

print "Digite o primeiro numero: "
x = gets.chomp.to_i

print "Digite o segundo numero: "
y = gets.chomp.to_i

resultado_elevado = x**y


puts "O resultado de #{x} elavado a #{y} e: #{resultado_elevado}"
