#  Crie um script que permita ao usuário digitar vários números.
#  Para cada número digitado, o script deve verificar
#  se ele é um número triangular. Dica: um número é
#  triangular quando é resultado do produto de três
#  números consecutivos. Exemplo: 2 x 3 x 4 = 24.
#  O script deve se encerrar quando o número 0 (zero) for digitado.


loop do
  print "Digite um numero: "
  numero = gets.chomp.to_i

  break if numero == 0

  n = 1
  found = false

  while n * (n+1)*(n+2) <= numero
    if n * (n+1)*(n+2) == numero
      found = true
      break
    end
    n += 1
  end

  if found
    puts "#{numero} é um número triangular."
  else
    puts "#{numero} não é um número triangular."
  end
end

puts "Programa encerrado."
