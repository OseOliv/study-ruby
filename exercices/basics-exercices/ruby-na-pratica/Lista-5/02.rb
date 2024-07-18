# Crie um script em Ruby que leia 15 números inteiros
# e guarde-os em um array.
# Depois, imprimir cada um dos números,
# dizendo se ele é par ou ímpar.

numeros = []


while numeros.size < 15
  print "Digite um numero: "
  num = gets.chomp.to_i
  numeros << num
end

numeros.each do |n|
    if n % 2 == 0
      puts "#{n} = Par"
    else
      puts "#{n} = Impar"
    end
end
