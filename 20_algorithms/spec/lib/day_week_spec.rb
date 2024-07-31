require 'spec_helper'
require 'day_week'

RSpec.describe DayWeek do
  let(:dw) { DayWeek.new }

  describe '#day_of_week' do
    it 'returns Thursday for 13 July 2017' do
      expect(dw.day_of_week("01 08 2024")).to eq('Thursday')
    end

    it 'returns Wednesday for 15 August 2012' do
      expect(dw.day_of_week("15 08 2012")).to eq('Wednesday')
    end

    it 'returns Sunday for 24 December 2456' do
      expect(dw.day_of_week("24 12 2456")).to eq('Sunday')
    end

    it 'returns Friday for 1 January 2021' do
      expect(dw.day_of_week("01 01 2021")).to eq('Friday')
    end

    it 'returns Thursday for 29 February 2024' do
      expect(dw.day_of_week("29 02 2024")).to eq('Thursday')
    end

    it 'returns Monday for 1 January 1900' do
      expect(dw.day_of_week("01 01 1900")).to eq('Monday')
    end
  end
end
