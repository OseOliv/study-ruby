class Matrix
  attr_reader :rows, :columns
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
