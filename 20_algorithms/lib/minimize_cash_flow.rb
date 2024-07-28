class MinimizeCashFlow
  def self.minimize_cash_flow(transactions)
    net_amount = Hash.new(0)

    # Calcula o saldo líquido para cada pessoa
    transactions.each do |lender, borrower, amount|
      net_amount[lender] -= amount
      net_amount[borrower] += amount
    end

    result = []

    while net_amount.any? { |_, amount| amount != 0 }
      creditor, debtor = get_max_creditor_and_debtor(net_amount)

      break if net_amount[creditor] == 0 || net_amount[debtor] == 0

      # Calcula o valor mínimo a ser transacionado
      min_amount = [net_amount[creditor], -net_amount[debtor]].min

      # Adiciona a transação ao resultado
      result << [debtor, creditor, min_amount]

      # Atualiza os saldos líquidos
      net_amount[debtor] += min_amount
      net_amount[creditor] -= min_amount

      # Remove entradas com saldo zero
      net_amount.delete(debtor) if net_amount[debtor] == 0
      net_amount.delete(creditor) if net_amount[creditor] == 0
    end

    result
  end

  def self.get_max_creditor_and_debtor(net_amount)
    creditor = net_amount.max_by { |_, amount| amount }[0]
    debtor = net_amount.min_by { |_, amount| amount }[0]
    [creditor, debtor]
  end
end
