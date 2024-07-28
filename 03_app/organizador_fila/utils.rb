require 'ffaker'

def tempo_aleatorio(min, max)
  rand(min..max)
end

def gerar_cliente(numero_chegada)
  nome = FFaker::Name.name
  Cliente.new(nome, numero_chegada)
end