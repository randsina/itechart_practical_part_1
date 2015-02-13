def make_change(amount, coins)
  result = []
  i = 1

  loop do
    combs = coins.repeated_combination(i).to_a
    result = combs.select { |comb| comb.inject(:+) == amount }

    break if result.any? || combs.all? { |comb| comb.inject(:+) >= amount }
    i += 1
  end

  result
end

def make_change_pretty(amount, coins)
  combs = make_change(amount, coins)

  puts "Exchanging #{amount} using coins: #{coins}:"
  if combs.any?
    combs.each { |comb| puts comb.join(', ') }
  else
    puts 'No combinations :('
  end
  puts
end

make_change_pretty(14, [10, 7, 1])
make_change_pretty(123, [10, 7, 1])
make_change_pretty(10, [2, 3, 1])
make_change_pretty(14, [5, 5])
