# Modifique um método para receber um argumento opcional com um valor padrão.

def opcional(num1, num2=1)
  return num1 + num2
end

res = opcional(12, 10)
puts res
