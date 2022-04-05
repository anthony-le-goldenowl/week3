=begin

Instructions
In this exercise you will be working with savings accounts. 
Each year, the balance of a savings account is updated based on the interest rate. The interest rate the bank gives depends on the amount of money 
in the accounts (its balance):

    -3.213% for a negative balance.
    0.5% for a non-negative balance less than dollars.1000
    1.621% for a positive balance greater or equal than dollars and less than dollars.10005000
    2.475% for a positive balance greater or equal than dollars.5000
You have three tasks, each of which will deal with the balance and its interest rate.


Task 1
Calculate the interest rate
Implement the method to calculate the interest rate based on the specified balance:SavingsAccount.interest_rate

SavingsAccount.interest_rate(200.75)
#=> 0.5
Note that the value returned is an instance of .Float

Task 2
Calculate the annual balance update
Implement the method to calculate the annual balance update, taking into account the interest rate:SavingsAccount.annual_balance_update

SavingsAccount.annual_balance_update(200.75)
#=> 201.75375
Note that the value returned is an instance of .Float

Task 3
Calculate the years before reaching the desired balance
Implement the method to calculate the minimum number of years required to reach the desired balance:SavingsAccount.years_before_desired_balance

SavingsAccount.years_before_desired_balance(200.75, 214.88)
#=> 14
Note that the value returned is an instance of .Integer

=end

module SavingsAccount
  def self.interest_rate(balance)
    return -3.213 if balance.negative?
    return 0.5 if (0...1000).include?(balance)
    return 1.621 if (1000...5000).include?(balance)
    2.475
  end

  def self.annual_balance_update(balance)
    return (balance - balance * interest_rate(balance) / 100).to_f if interest_rate(balance).negative?
    return (balance + balance * interest_rate(balance) / 100).to_f
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    @years_before_desired_balance = 0
    until current_balance >= desired_balance
        current_balance = annual_balance_update(current_balance)
        @years_before_desired_balance += 1
    end
    @years_before_desired_balance
  end
end

puts SavingsAccount.interest_rate(1000) 
puts SavingsAccount.interest_rate(200.75)
puts SavingsAccount.annual_balance_update(1200)
puts SavingsAccount.years_before_desired_balance(1000, 2400)