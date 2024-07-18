# Leia o conteúdo de um arquivo e imprima no console.

file = File.open("exec.txt", "r")

file.each do |line|
  puts line
end


file.close
