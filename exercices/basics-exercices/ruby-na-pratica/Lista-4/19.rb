# Crie um script em Ruby que calcule o Mínimo Múltiplo
# Comum (MMC) entre dois números lidos.
# Dica: o
# MMC de dois números é o menor número múltiplo dos dois números informados.

print "Digito o primeiro numero: "
num_1 = gets.chomp.to_i

print "Digito o segundo numero: "
num_2 = gets.chomp.to_i

# Encontrar o maior e o menor dos dois números
maior = num_1 > num_2 ? num_1 : num_2
menor = num_1 < num_2 ? num_1 : num_2

mmc = maior

until mmc % menor == 0
  mmc += maior
end

puts "O MMC de #{num_1} e #{num_2} é: #{mmc}"
