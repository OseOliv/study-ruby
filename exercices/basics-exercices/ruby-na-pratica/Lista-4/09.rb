# Dado um país A, com 5 milhões de habitantes e
# uma taxa de natalidade de 3% ao ano, e um país B
# com 7 milhões de habitantes e uma taxa de natalidade
# de 2% ao ano, crie um script em Ruby que calcule e
# imprima o tempo necessário para que a população
# do país A ultrapasse a população do país B.

populacao_a = 5_000_000
populacao_b = 7_000_000
taxa_natalidade_a = 0.03
taxa_natalidade_b = 0.02
tempo_necessario = 0

while true
  tempo_necessario += 1

  nasc_a = populacao_a * taxa_natalidade_a
  nasc_b = populacao_b * taxa_natalidade_b

  populacao_a += nasc_a
  populacao_b += nasc_b

  if populacao_b > populacao_a
    puts "O tempo necessario sera de #{tempo_necessario} ano(s)."
    break
  end

end
