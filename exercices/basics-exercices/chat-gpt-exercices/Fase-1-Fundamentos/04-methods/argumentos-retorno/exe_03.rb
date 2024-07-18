# Crie um método que verifique se uma string contém outra string.
#



def includes(string)
str = "Crie um método que verifique se uma string contém outra string"

  if str.include?(string)
    puts "A string str contem '#{string}'"
  else
    puts "A string str nao contem '#{string}'"
  end
end


includes("veri")
