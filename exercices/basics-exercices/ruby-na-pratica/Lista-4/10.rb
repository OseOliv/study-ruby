# Chico tem 1,50 metros e cresce 2 cm por ano, enquanto
# Juca tem 1,10 metros e cresce 3 cm por ano.
# Crie um script em Ruby que calcule e imprima
# quantos anos serão necessários para que Juca
# seja maior que Chico.


  chico = 1.50
  chico_cresc = 0.02

  juca = 1.10
  juca_cresc = 0.03

  anos_necessarios = 0

  while true
    anos_necessarios += 1

    chico += chico_cresc
    juca += juca_cresc

    if juca > chico
      puts "Serao nescessario #{anos_necessarios} ano(s)"
      break
    end
  end
