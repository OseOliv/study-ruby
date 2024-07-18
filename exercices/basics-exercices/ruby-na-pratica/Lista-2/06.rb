# O imposto de renda de uma pessoa varia segundo uma tabela.
#
# Se o salário for menor do que R$ 1.000,00, não há imposto,
#
# se for entre R$ 1.000,00 e R$ 2.200,00, o imposto é de 13%,
#
# se for maior do que 2.200,00, o imposto é de 22%.
#
# Crie um script em Ruby que, dado um valor em reais
#
# informado pelo usuário, correspondente a um salário,
#
# informe o valor que será recebido (total menos o imposto).


print "Digite o salario: "
salario = gets.chomp.to_f

imposto_13 = salario * 0.13
imposto_22 = salario * 0.22

if salario > 1000 && salario < 2200
  salario_13 = salario - imposto_13
  puts "Salario com 13% de imposto: R$#{salario_13}"
elsif salario > 2200
  salario_22 = salario - imposto_22
  puts "Salario com 22% de imposto: R$#{salario_22}"
else
  puts "Salario sem imposto: R$#{salario}"
end
