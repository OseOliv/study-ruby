# Crie um método que execute um bloco passado como argumento.

def bloco(&block)
  block.call
end

bloco {puts "exec block"}
