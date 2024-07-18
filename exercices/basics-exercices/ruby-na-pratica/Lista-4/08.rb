# Crie um script que permita ao usuário digitar
# vários números. O script deve se encerrar quando
# o usuário digitar -999. Para cada número digitado,
# o script deve imprimir todos os seus divisores.
#



while true
  print "Digite um numero: "
  numero = gets.chomp.to_i

  break if numero == -999

  divisores = []

    (1..numero).each do |d|
      if numero % d == 0
       divisores << d
      end
    end
    puts "Os divisores de `#{numero}` sao: #{divisores}"
end
