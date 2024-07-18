# Crie um programa que verifique a idade de uma
# pessoa e imprima se ela é criança, adolescente,
# adulta ou idosa.

def pessoa(idade)
  if idade <= 12
    puts "CRIANCA"
  elsif idade <= 19
    puts "ADOLESCENTE"
  elsif idade <=64
    puts "ADULTO"
  else
    puts "IDOSO"
  end
end

pessoa(8)
pessoa(16)
pessoa(35)
pessoa(70)
