# Crie um script em Ruby que permita que o usuário digite
# os nomes de várias profissões. Quando o usuário teclar
# ENTER sem digitar nada, o script deve informar quantas
# vezes "dentista" foi digitado.

count = 0

while true
  print "Digite o nome de profissoes: "
  prof = gets.chomp

  if prof.empty?
    puts "A profissao 'dentista' foi digitada #{count} vezes."
    break
  elsif prof == "dentista"
    count += 1
  end
end
