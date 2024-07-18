# Crie um script que leia vários números inteiros positivos
# e imprima a média dos números múltiplos de 3.
# O script deve se encerrar quando 0 (zero) for digitado.


num_3 = []

loop do
  print "Digite o numero: "
  num = gets.chomp.to_i
  break if num == 0

  if num % 3 == 0
    num_3 << num
  end
end

media = (num_3.sum / num_3.size.to_f)


p num_3
puts "A media dos números múltiplos de 3: #{media}"
