# Escreva um programa que tente dividir um número por zero e trate a exceção.

def dividir(a,b)
  begin
    res = a / b
  rescue ZeroDivisionError => e
    puts "Error: Divisao por zero!"
    return nil
  ensure
    puts "Operacao de divisao finalizada."
  end
  res
end

puts dividir(10,0)
puts dividir(10,2)
