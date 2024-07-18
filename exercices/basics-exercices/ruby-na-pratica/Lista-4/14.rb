# Crie um script em Ruby que que leia vários números
# inteiros e imprima a quantidade de números primos
# dentre os números que foram digitados. O script
# acaba quando se digita um número menor ou igual a 0 (zero).


primos = 0


loop do
  print "Digite um numero: "
  numero = gets.chomp.to_i
  break if numero <= 0

  primo = true

  if numero > 1
    (2..Math.sqrt(numero)).each do |n|
      if numero % n == 0
        primo = false
      end
    end
    primos += 1 if primo
  end

end

puts "A quantidade de numero primos digitados: #{primos}"
