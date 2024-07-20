require 'spec_helper'
require 'roman_to_integer'

RSpec.describe RomanToInteger do
  describe 'converts roman to integer' do
    it "should convert I to 1" do
      expect(RomanToInteger.roman_to_int('I')).to be(1)
    end
    it "should convert IV to 4" do
      expect(RomanToInteger.roman_to_int('IV')).to be(4)
    end
    it "should convert V to 5" do
      expect(RomanToInteger.roman_to_int('V')).to be(5)
    end
    it "should convert X to 10" do
      expect(RomanToInteger.roman_to_int('X')).to be(10)
    end
    it "should convert MMXXIV to 2024" do
      expect(RomanToInteger.roman_to_int('MMXXIV')).to be(2024)
    end
  end
end
