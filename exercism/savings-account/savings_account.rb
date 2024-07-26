module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative?
      3.213
    elsif balance < 1000
      0.5
    elsif balance < 5000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    interest = 1 + (interest_rate(balance)/100)
    balance * interest
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    new_balance = current_balance
    years = 0
    until new_balance >= desired_balance
      new_balance = annual_balance_update(new_balance)
      years += 1
    end
    years
  end
  end
