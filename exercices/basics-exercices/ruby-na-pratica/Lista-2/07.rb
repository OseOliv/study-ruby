# Desenvolva um script em Ruby que informe se uma data
# é válida ou não. O script deverá ler 3 números inteiros,
# que representem o dia, o mês e o ano da data. Uma data é
# considerada válida quando o dia estiver entre 1 e 31,
# o mês estiver entre 1 e 12 e o ano for maior que zero.

print "Digite o primeiro numero inteiro: "
dia = gets.chomp.to_i

print "Digite o segundo numero inteiro: "
mes = gets.chomp.to_i

print "Digite o terceiro numero inteiro: "
ano = gets.chomp.to_i

if (dia > 0  && dia <= 31) && (mes > 0 && mes <= 12) && (ano > 0)
  puts "A data #{dia}-#{mes}-#{ano}"
  puts "E uma data valida!"
else
  puts "A data #{dia}-#{mes}-#{ano}"
  puts "Nao e uma data valida!"
end
