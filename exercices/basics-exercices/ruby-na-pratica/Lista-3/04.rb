# Desenvolva um script em Ruby que mostre todos os
# números entre 1 e 200 que são divisíveis por 3 ou por 5.

numeros = 1..200

numeros.each do |n|
  if n % 3 == 0 || n % 5 == 0
    puts "#{n}"
  end
end
