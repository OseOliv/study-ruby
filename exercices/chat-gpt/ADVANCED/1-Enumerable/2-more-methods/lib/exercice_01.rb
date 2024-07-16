# Use reject para remover números ímpares de um array.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array2 = array.reject {|n| n.odd?}

p array2