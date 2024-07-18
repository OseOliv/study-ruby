# Exercício 3: Soma de matrizes

# Descrição:
# Escreva uma função soma_matrizes(A, B) que recebe
# duas matrizes representadas como arrays de arrays
# em Ruby (A e B) e retorna a matriz resultante da
# soma de A e B, se as dimensões forem compatíveis.
# Caso contrário, a função deve retornar nil.


def roman_to_int(str)
  roman_hash = {
    'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50,
    'C' => 100, 'D' => 500, 'M' => 1000
  }

  total = 0
  prev_value = 0

  str.chars.reverse.each do |char|
    value = roman_hash[char]
    if value < prev_value
      total -= value
    else
      total += value
    end
    prev_value = value
  end

  total
end
