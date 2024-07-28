class Matrix
  attr_reader :rows , :columns
  def initialize(text)
    @rows = text.lines.map { |l| l.split.map(&:to_i) }
    @columns = rows.transpose
  end
  def row(offset)
    rows[offset-1]
  end
  def column(offset)
    columns[offset-1]
  end
end

matrix_string = "1 2 3\n4 5 6\n7 8 9"
matrix = Matrix.new(matrix_string)

puts "Rows:"
matrix.rows.each { |row| puts row.join(", ") }

puts "Columns:"
matrix.columns.each { |col| puts col.join(", ") }

puts "Row 1:"
puts matrix.row(1).join(", ")

puts "Column 2:"
puts matrix.column(2).join(", ")