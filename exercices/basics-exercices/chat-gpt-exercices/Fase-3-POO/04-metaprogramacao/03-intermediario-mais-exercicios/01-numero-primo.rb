# Exercício 1: Verificar se um número é primo

# Descrição:
# Escreva uma função eh_primo(n) que recebe um número
# inteiro n como argumento e retorna true se n for primo,
# e false caso contrário. Um número primo é aquele que é
# divisível apenas por 1 e por ele mesmo.

def eh_primo(n)
  if n <=1
    puts "O numero #{n} NAO e primo"
  else
    primo = true
    for i in 2..(n-1)
      if n % i == 0
        primo = false
        break
      end
    end

    if primo
      puts "O numero #{n} e primo"
    else
      puts "O numero #{n} NAO e primo"
    end
  end
end


eh_primo(33)


# Primeiro, verificamos se o número é menor ou igual a 1 e imprimimos que não é primo.
# Caso contrário, inicializamos primo como verdadeiro.
# Iteramos de 2 até n-1 e verificamos se n é divisível por algum desses números.
# Se n for divisível por algum número, definimos primo como falso e saímos do loop.
# No final, verificamos o valor de primo para determinar se o número é primo ou não.
