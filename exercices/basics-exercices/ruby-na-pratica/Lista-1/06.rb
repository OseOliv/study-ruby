# Crie um script em Ruby leia a altura de uma pessoa em metros
# e mostre a altura em centímetros e milímetros.

print "Digite sua altura em metros: "
altura = gets.chomp.to_f

centimetros = (altura * 100).to_i
milimetros = (altura * 1000).to_i

puts "A altura em centímetros e: #{centimetros}cm"
puts "A altura em milímetros e: #{milimetros}mm"
