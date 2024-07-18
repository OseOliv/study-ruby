# Use yield para executar um bloco dentro de um método.

def bloco
  yield
end

bloco {puts "Executando o bloco"}
