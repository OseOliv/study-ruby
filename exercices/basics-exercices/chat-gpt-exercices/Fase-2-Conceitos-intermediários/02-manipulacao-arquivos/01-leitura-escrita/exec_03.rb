# Adicione uma linha ao final de um arquivo existente
#
File.open("exec.txt", "a") do |file|
  file.puts "ESTA E A NOVO LINHA NO FINAL DO ARQUIVO!"
end
