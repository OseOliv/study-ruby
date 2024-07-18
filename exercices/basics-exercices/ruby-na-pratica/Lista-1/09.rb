# Crie um script em Ruby que leia
# quatro valores inteiros de um usuário:
# quantidade de dias, horas, minutos e segundos.
# O script deve calcular e mostrar a
# quantidade de segundos desse tempo.

print "Digite uma quantidade de dias: "
dias = gets.chomp.to_i

print "Digite uma quantidade de horas: "
horas = gets.chomp.to_i

print "Digite uma quantidade de minutos: "
minutos = gets.chomp.to_i

print "Digite uma quantidade de segundos: "
segundos = gets.chomp.to_i

dias_em_segundos =  ((24*60)*dias)*60
horas_em_segundos = ((60*60)*horas)
minutos_em_segundos = (60*minutos)

tempo_total_em_segundos = dias_em_segundos + horas_em_segundos + minutos_em_segundos + segundos

puts "A quantidade do tempo total em segundos e: #{tempo_total_em_segundos} segundos"
