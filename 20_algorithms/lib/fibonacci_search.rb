def fibonacci_search(array, x)
  n = array.length

  # Inicialize os números de Fibonacci
  fibM2 = 0
  fibM1 = 1
  fibM = fibM2 + fibM1

  # Encontre o menor número de Fibonacci maior ou igual ao tamanho do array
  while fibM < n
    fibM2 = fibM1
    fibM1 = fibM
    fibM = fibM2 + fibM1
  end

  # Marca o início da sublista eliminada
  offset = -1

  # Enquanto houver elementos para inspecionar
  while fibM > 1
    # Índice a comparar
    i = [offset + fibM2, n - 1].min

    if array[i] < x
      fibM = fibM1
      fibM1 = fibM2
      fibM2 = fibM - fibM1
      offset = i
    elsif array[i] > x
      fibM = fibM2
      fibM1 = fibM1 - fibM2
      fibM2 = fibM - fibM1
    else
      return i
    end
  end

  # Comparação final
  if fibM1 && array[offset + 1] == x
    return offset + 1
  end

  # Elemento não encontrado
  return -1
end


array = [2, 3, 4, 10, 40]
x = 10

puts fibonacci_search(array, x) # Output esperado: 3


