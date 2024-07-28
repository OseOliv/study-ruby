require 'spec_helper'
require 'minimize_cash_flow'


RSpec.describe MinimizeCashFlow, '.minimize_cash_flow' do

  it 'handles a case where one person is a net lender and one person is a net borrower' do
    transactions = [['A1', 'A2', 300], ['A2', 'A3', 300]]
    result = MinimizeCashFlow.minimize_cash_flow(transactions)
    expect(result).to eq([['A1', 'A3', 300]])
  end

  it 'handles a case with all debts being zero' do
    transactions = [['A1', 'A2', 0], ['A2', 'A3', 0], ['A3', 'A1', 0]]
    result = MinimizeCashFlow.minimize_cash_flow(transactions)
    expect(result).to be_empty
  end
end