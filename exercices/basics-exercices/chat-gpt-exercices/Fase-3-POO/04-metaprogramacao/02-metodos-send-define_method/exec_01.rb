# Crie um método envia_mensagem que usa send
# para chamar um método com um nome fornecido.


def envia_mensagem(metodo)
  send metodo.to_sym
end

def mensagem
  puts "ESTOU TENTANDO!"
end

envia_mensagem("mensagem")
