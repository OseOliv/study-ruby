# frozen_string_literal: true

require 'spec_helper'
require 'hero'

describe Hero do
  it 'has a sword' do
    hero = Hero.new
    expect(hero.weapon).to eq('sword')
  end

  it 'has more than 1000 HP points' do
    hero = Hero.new
    expect(hero.life).to be > 1000
  end
end

describe Hero do
  context 'quando esta com armadura' do
    it 'tem 5000 pontos de hp' do
      hero = Hero.new
      expect(hero.life).to eq(5000)
    end
  end
end