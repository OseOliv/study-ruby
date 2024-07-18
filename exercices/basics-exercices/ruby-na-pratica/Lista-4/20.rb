# Crie um script em Ruby que calcule o Máximo Divisor Comum (MDC)
#  entre dois números inteiros lidos. Dica: o MDC de dois números
#  é o maior número divisor dos dois números informados.

# Solicita os números ao usuário
print "Digite o primeiro número: "
num1 = gets.chomp.to_i

print "Digite o segundo número: "
num2 = gets.chomp.to_i

# Encontra o menor dos dois números
menor = num1 < num2 ? num1 : num2

# Inicializa o MDC como 1, pois é o valor mínimo possível
mdc = 1

# Verifica cada número de 1 até o menor número para encontrar o MDC
(1..menor).each do |i|
  if num1 % i == 0 && num2 % i == 0
    mdc = i
  end
end

# Exibe o MDC calculado
puts "O MDC de #{num1} e #{num2} é: #{mdc}"
