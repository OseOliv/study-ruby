# Use each_with_index para imprimir cada elemento e seu índice.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each_with_index do |e, i|
  puts "Index: #{i}, Elemento: #{e}"
end