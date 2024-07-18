# Exercício 2: Contagem de palavras

# Descrição:
# Escreva uma função contar_palavras(frase) que
# recebe uma frase como argumento e retorna um
# hash onde as chaves são as palavras da frase
# e os valores são a contagem de vezes que cada
# palavra aparece na frase.


def contar_palavras(frase)
  hash = Hash.new(0)
  palavras = frase.split

  palavras.each do |palavra|
    hash[palavra] += 1
  end
  hash
end

res = contar_palavras("o rato roeu a roupa do rei de roma e a rainha de raiva roeu")
puts res
