# Escreva uma string em um arquivo.

File.open("exec.txt", "a") do |line|
  line.puts("Escreva uma string em um arquivo.")
end
