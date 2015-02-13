def change_money(amount = 14, coins = [10, 7, 1])
  result = []
  i = 1
  loop do
    combs = coins.repeated_combination(i).to_a
    result = combs.select {|c| c.reduce(:+) == amount }
    break unless result.empty?
    i += 1
  end
  result.first
end

p change_money(83, [25, 20, 10, 5, 1])
