# Use unless para imprimir uma
# mensagem se uma variável for nil.




def message(msg)
  unless msg
    puts "Esta variavel e nil"
  else
    puts "Esta variavel nao e nil"
  end
end

message(nil)
message("Oi")
