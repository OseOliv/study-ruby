# Crie um script em Ruby que imprima todas as tabuadas
# de multiplicação de 1 a 10.



(1..10).each do |i|
  puts "TABUADA DE #{i}"
  (1..10).each do |n|
    puts "#{i} * #{n} = #{i * n}"
  end
  puts "-"*15
end
