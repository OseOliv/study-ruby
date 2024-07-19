require 'spec_helper'
require 'calculadora'


RSpec.describe Calculadora do
  context 'Calculadora para somar' do
    it 'soma de dois numeros' do
      calc = Calculadora.new
      expect(calc.soma(5,10)).to eq(15)
      puts "Teste de soma executado sem erros."
    end
  end
end