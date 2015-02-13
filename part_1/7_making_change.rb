def change_money(amount, coins)
  array = {}
  amount.times do |i|
    coins.each do |coin|
      el = array[i + coin]
      if el.nil? || (el.size > (array[i].nil? ? 1 : array[i].size + 1))
        array[i + coin] = array[i].nil? ? [coin] : array[i] + [coin]
      end
    end
  end
  array[amount].reduce(:+) == amount ? array[amount] : []
end

p change_money(14, [10, 7, 1])
