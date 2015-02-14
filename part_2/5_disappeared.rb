require 'set'
def find_missed_numbers(number, array)
  (Set.new(1..number) - array).to_a
end

puts find_missed_numbers(ARGV.first.to_i, ARGV[1..-1].map(&:to_i))
