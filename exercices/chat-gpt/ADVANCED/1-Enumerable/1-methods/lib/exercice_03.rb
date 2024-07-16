# Use reduce para calcular o produto de todos os números em um array.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array2 = array.reduce {|acc, elem| acc * elem}

p array2