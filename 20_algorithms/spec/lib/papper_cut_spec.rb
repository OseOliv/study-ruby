require 'spec_helper'
require 'papper_cut'

RSpec.describe PapperCut do
  describe '#cut' do
    it 'the number of cuts should be 9' do
      cut = PapperCut.new
      a, b = 13, 29
      expect(cut.papper_cut(a,b)).to eq(9)
    end

    it 'the number of cuts should be 5' do
      cut = PapperCut.new
      a, b = 4, 5
      expect(cut.papper_cut(a,b)).to eq(5)
    end
  end
end