require 'spec_helper'
require 'sum_minute'

RSpec.describe SumMinute do
  describe '.time_after_k_minutes' do
    it 'returns the correct time after adding 21 minutes' do
      expect(SumMinute.time_after_k_minutes('12:43', 21)).to eq('13:04')
    end

    it 'returns the correct time after adding 534 minutes' do
      expect(SumMinute.time_after_k_minutes('20:39', 534)).to eq('05:33')
    end

    it 'returns the correct time when minutes addition results in the same day' do
      expect(SumMinute.time_after_k_minutes('23:50', 15)).to eq('00:05')
    end

    it 'returns the correct time when minutes addition results in a new day' do
      expect(SumMinute.time_after_k_minutes('01:00', 1440)).to eq('01:00')
    end

    it 'returns the correct time when K is 0' do
      expect(SumMinute.time_after_k_minutes('15:30', 0)).to eq('15:30')
    end

    it 'returns the correct time when K is negative' do
      expect(SumMinute.time_after_k_minutes('12:00', -60)).to eq('11:00')
    end
  end
end