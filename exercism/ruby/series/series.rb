class Series

  attr_reader :serie

  def initialize(serie)
    @serie = serie
  end

  def slices(size)
    raise ArgumentError if size > @serie.length

    @serie.chars.each_cons(size).map(&:join)
  end

end