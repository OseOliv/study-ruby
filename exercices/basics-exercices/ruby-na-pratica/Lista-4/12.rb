# Criar um script em Ruby que leia vários números
# inteiros e apresente o fatorial de cada número.
# O script se encerra quando o usuário digitar
# um número menor do que 1. Dica: o fatorial
# de um número é a multiplicação dele por todos
# os seus antecessores. Exemplo: o fatorial de 5 é 5 x 4 x 3 x 2 x 1 = 120;




loop do
  print "Digite um numero inteiro: "
  num = gets.chomp.to_i

  break if num < 1

  factorial = 1
  num_atual = num

  while num_atual > 0
    factorial *= num_atual
    num_atual -= 1
  end

puts "O fatorial de #{num} e #{factorial}"

end
