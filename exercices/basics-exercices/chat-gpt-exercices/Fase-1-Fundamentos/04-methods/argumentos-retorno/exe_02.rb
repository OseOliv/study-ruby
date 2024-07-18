# Escreva um método que receba uma lista de números e retorne a soma deles.

def numeros(*args)
  return args.sum
end

res = numeros(1,2,3,4,5)
puts res
