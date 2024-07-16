# Use select para filtrar números pares de um array.

arr = [1,2,3,4,5,6,7,8,9,10,11,12]

arr2 = arr.select { |n| n.even? }

p arr2