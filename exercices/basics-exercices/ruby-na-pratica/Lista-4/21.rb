#  Repare a seguinte característica do número 3025: 30 + 25 = 55 e 552 = 3025.
#
#  Criar um script que possa ler vários números inteiros de 4 algarismos,
#
#  um de cada vez, e diga se o número apresenta a mesma característica
#
#  (repare que 3025 / 100 = 30 com resto 25). O script termina quando
#
#  for lido um valor menor que 1000 ou maior que 9999.


loop do
  print "Digite um numero entre 1000 e 9999: "
  num = gets.chomp.to_i

  if num < 1000 || num > 9999
    puts "Valor fora do intervalo. Saindo..."
    break
  end

part1 = num / 100
part2 = num % 100

sum = part1 + part2

if sum**2 == num
  puts "#{num} apresenta as mesmas caracteristicas!"
else
  puts "#{num} não possui as mesmas característica"
end

end
