def find_missed_numbers(number, array) # (1..number).to_a - array
  missed_numbers, i = [], 1
  array.each_with_index do |n, index|
    if n != index + i
      ((index + i)...n).each { |e| missed_numbers << e }
      i = n - index
    end
  end
  (array[-1] + 1).upto(number) { |num| missed_numbers << num }
  missed_numbers
end

puts find_missed_numbers(ARGV.first.to_i, ARGV[1..-1].map(&:to_i))
