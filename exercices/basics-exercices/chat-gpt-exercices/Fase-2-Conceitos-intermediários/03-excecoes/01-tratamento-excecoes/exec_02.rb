# Crie um método que levante uma exceção se um argumento for negativo.

def idade(idade)
  raise "Idade deve ser positiva" if idade < 0

  if idade > 0
  puts "Sua idade e #{idade}"
  end

end

idade(-1)
