# Verifique se uma chave específica existe em um hash.

hash = {:um => 1, :dois => 2, :tres => 3}

if hash.has_key?(:um)
  puts "Chave existe no hash"
else
  puts "Chave nao existe no hash"
end
