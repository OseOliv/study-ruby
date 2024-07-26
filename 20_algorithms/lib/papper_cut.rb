class PapperCut
  def papper_cut(a, b)
    raise ArgumentError, 'Dimensions must be greater than zero' if a.zero? || b.zero?

    a, b = b, a if a > b

    return 1 if a == b

    num_squares = b / a
    remainder = b % a

    if remainder.zero?
      num_squares
    else
      num_squares + papper_cut(a, remainder)
    end
  end
end


