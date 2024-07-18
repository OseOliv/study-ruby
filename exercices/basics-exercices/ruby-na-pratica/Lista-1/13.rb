# Crie um script em Ruby que leia o salário de um funcionário,
# reajuste o salário em 7% e mostre o resultado.

print "Digite o seu salario: "
salario = sprintf("%.2f",gets.chomp.to_f )

salario_reajuste = (salario * 0.07) + salario

puts "O salario de R$#{salario} com reajuste de 7% ficara: R$#{salario_reajuste}"

# print "Digite o seu salário: "
# salario = gets.chomp.to_f

# salario_reajustado = salario * 1.07  # Calcula o salário com reajuste de 7%

# puts "O salário de R$#{salario} com reajuste de 7% ficará: R$#{salario_reajustado}"
