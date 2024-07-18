# Adicione e remova um par chave-valor de um hash.

hash = {:um => 1, :dois => 2, :tres => 3}

#ADICIONAR UM HASH
hash[:quatro] = 4
puts hash

puts ""
#REMOVER UM Hash
hash.delete(:tres)
puts hash
