class FibonacciSearch
  def fibonacci_search(array, x)
    n = array.length

    fibM2 = 0
    fibM1 = 1
    fibM = fibM2 + fibM1

    while fibM < n
      fibM2 = fibM1
      fibM1 = fibM
      fibM = fibM2 + fibM1
    end

    offset = -1

    while fibM > 1
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


    if fibM1 && array[offset + 1] == x
      return offset + 1
    end

    return -1
  end
end





