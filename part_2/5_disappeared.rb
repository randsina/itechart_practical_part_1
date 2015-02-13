require 'set'
def find_missed_numbers(number, array)
  (Set.new(1..number) - array).to_a
end

puts find_missed_numbers(7, [1, 2, 4, 2, 4, 6]) # 3 5 7
