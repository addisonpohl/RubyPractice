class BankAccount
  attr_reader :name


  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning Balance", 0)
  end

  def credit(description, amount)
     add_transaction(description, amount)
  end

  def debit(description, amount)
    add_transaction(description, -amount)
  end

  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end

  def balance
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end

  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end

  def print_register
    puts "#{name}'s Bank Account"
    puts "-" * 45
    puts "Description".ljust(30) + "\tAmount".rjust(10)


    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + "\t" + sprintf("%0.2f", transaction[:amount]).rjust(10)
    end
      puts "-" * 45
      puts "Balance:".ljust(30) + "#{sprintf("%0.2f", balance)}".rjust(12)
      puts "-" * 45
  end

end

account = BankAccount.new("Addison")
account.credit("Paycheck", 100)
account.debit("Food", 40)
#puts sprintf("%0.2f", account.balance())     prints floating point number to two decimals to represent currency
#puts account                                 prints what is defind in the to_s method within the class
account.print_register
