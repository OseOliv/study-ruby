# Uma empresa de fornecimento de energia elétrica faz
# a leitura mensal dos medidores de consumo. Para cada
# consumidor, são digitados os seguintes dados:

# Número do consumidor;
# Quantidade de kWh consumidos durante o mês;
# Tipo (código) do consumidor:
# 1 – residencial (R$ 0,03 por kWh);
# 2 – comercial (R$ 0,05 por kWh);
# 3 – industrial (R$ 0,07 por kWh).
# Os dados devem ser lidos até que seja
# encontrado um consumidor com o número 0 (zero).
# Crie um script em Ruby que calcule e imprima:

# O custo total para cada consumidor;
# O total de consumo para os três tipos de consumidor;
# A média de consumo dos tipos 1 e 2.

numeros = []
kw_total = []
kw_tipos = []

kw_1 = [] #0,03
kw_2 = [] #0,05
kw_3 = [] #0,07



while true
  print "Digite o tipo(codigo 1, 2 , 3): "
  tipo = gets.chomp.to_i
  if tipo == 0
    break
  end
  print "Digite o numero do consumidor: "
  numero = gets.chomp
  print "Digite o consumo de kWh: "
  kw = gets.chomp.to_i


  numeros << numero
  kw_total << kw
  kw_tipos << tipo


  if tipo == 1
    kw_1 << kw
  elsif tipo == 2
    kw_2 << kw
  elsif tipo == 3
    kw_3 << kw
  end
end
puts "-"*15
numeros.each_with_index do |numero, index|
  kw = kw_total[index]
  tipo = kw_tipos[index]
  custo = case tipo
            when 1
            kw * 0.03
            when 2
              kw * 0.05
            when 3
              kw * 0.07
            else
              0
            end
            puts "Consumidor #{numero}: Total = R$ #{'%.2f' % custo}"
          end



media_1 = (kw_1.sum / kw_1.size.to_f) unless kw_1.empty?
media_2 = (kw_2.sum / kw_2.size.to_f) unless kw_2.empty?

puts "-"*15
puts "Total de consumo:"
puts "Tipo 1: #{kw_1.sum} kWh"
puts "Tipo 2: #{kw_2.sum} kWh"
puts "Tipo 3: #{kw_3.sum} kWh"
puts "-"*15
puts "Media de consumo (1 e 2):"
puts "Tipo 1: #{media_1}" unless kw_1.empty?
puts "Tipo 2: #{media_2}" unless kw_2.empty?
