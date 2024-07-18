# Faça um script em Ruby que mostre os números pares entre 1 e 100.

numeros = 1..100

numeros.each do |n|
  if n % 2 == 0
    puts "Par: #{n}"
  end
end
