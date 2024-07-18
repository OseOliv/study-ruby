# Crie um script em Ruby que permita que o usuário
# digite o sexo de várias pessoas ("m" para masculino ou "f" para feminino).
# Quando o usuário teclar ENTER sem digitar nada,
# o script deve informar quantas vezes foi digitado "m".

count_m = 0

while true
  print "Digite o sexo [f/m]: "
  sexo = gets.chomp

  if sexo.empty?
    puts "'m' foi digitado #{count_m} vezes."
    break
  elsif sexo == 'm'
    count_m += 1
  end

end
