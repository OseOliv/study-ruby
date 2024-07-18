# Crie um script em Ruby que permita ao usuário digitar
# o número da conta e o saldo de várias pessoas.
#
# Após a digitação dos dados de cada conta,
# o script deve apresentar o número da conta e
# informar se o saldo é positivo ou negativo.

# O script deve terminar quando um número de conta
# negativo for digitado.
#
# Ao final, o script deve mostrar
# o percentual de contas com o saldo negativo.

contas = []
saldos = []


count_neg = 0

loop do
  print "Digite o numero da conta: "
  num_conta = gets.chomp.to_i
  break if num_conta < 0
  print "Digite o saldo da conta: "
  saldo_conta = gets.chomp.to_f


  contas << num_conta
  saldos << saldo_conta

  puts "Numero da conta: #{num_conta}"
  puts "Saldo da conta: #{saldo_conta}"
  if saldo_conta < 0
    puts "Saldo da conta negativo"
    count_neg += 1
  else
    puts "Saldo da conta positivo"
  end

end
if saldos.size > 0
  porcentagem = (count_neg.to_f / saldos.size) * 100
  puts "O percentual de contas com o saldo negativo: #{porcentagem}%"
else
 puts "Nenhuma conta foi digitada."
end
