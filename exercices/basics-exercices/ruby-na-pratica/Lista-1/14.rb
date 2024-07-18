# Crie um script em Ruby que leia o salário de
# um funcionário e uma
# O script deve calcular e mostrar o salário reajustado.

print "Digite o salario: "
salario = gets.chomp.to_f

print "Digite a porcentagem do reajuste: "
reajuste = gets.chomp.to_f

porcentagem_de_reajuste = (reajuste / 100)

salario_reajustado = salario + (salario * porcentagem_de_reajuste)

puts "O salario de R$#{salario} com o reajuste de #{reajuste}% sera: R$#{salario_reajustado}"
