# Use ensure para imprimir uma mensagem
# independente de uma exceção ter sido levantada ou não.

def idade(ano_atual, ano_nasc)
  begin
    age = ano_atual - ano_nasc
  ensure
   puts "imprimir uma mensagem independente de uma exceção ter sido levantada ou não"
  end
   age
end

puts "Sua idade e: #{idade(2024,1991)}"
