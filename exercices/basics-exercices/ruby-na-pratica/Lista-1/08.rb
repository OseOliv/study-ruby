# Crie um script em Ruby que leia uma idade
# e calcule quantos dias essa pessoa já viveu.
# Considere que 1 ano tem 365 dias.

print "Digite sua idade: "
idade = gets.chomp.to_i

if idade > 0
  dias_pessoa_viveu = idade * 365 + (idade/4)
  puts "Voce ja viveu #{dias_pessoa_viveu} dias."
else
  puts "Erro: Por favor, digite uma idade válida."
end
