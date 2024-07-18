# Na Usina de Angra dos Reis, os técnicos analisam a
# perda de massa de um material radioativo.
# Sabendo-se que esse material perde 25% de sua massa a cada 30 segundos,
# criar um script em Ruby que leia um valor real que representa
# o peso do material e mostre o tempo necessário para que a
# massa desse material se torne menor que 10 gramas.

massa = 100
perda = 0.25
tempo = 0

while massa >= 10 do
  massa *= (1-perda)
  tempo += 30
end

puts "Tempo necessário para a massa ser menor que 10g: #{tempo} segundos "
