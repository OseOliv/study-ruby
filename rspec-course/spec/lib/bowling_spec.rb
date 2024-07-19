require 'spec_helper'
require 'bowling'

describe Bowling, "score" do
  context "with no strikes or spare" do
    it "sums the pin count for each roll" do
      bowling = Bowling.new
      4.times {bowling.hit(4)}
      expect(bowling.score).to eq(16)
    end
  end
end