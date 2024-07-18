# Compare o comportamento de um Proc e
# uma Lambda quando um return é usado dentro deles.

def metodo_proc
  proc = Proc.new { return "Retornando de dentro do Proc" }
  proc.call
  puts "Este código nunca será alcançado"
end

puts metodo_proc

def metodo_lambda
  lamb = lambda { return "Retornando de dentro da Lambda" }
  lamb.call
  puts "Este código será alcançado"
end

puts metodo_lambda
