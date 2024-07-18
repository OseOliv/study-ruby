# Defina um método que execute um bloco várias vezes.

def bloco
  5.times {yield}
end

bloco {puts "Executando bloco"}
