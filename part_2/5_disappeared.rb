def find_missed_numbers(number, array) # (1..number).to_a - array
  i = 1
  missed_numbers = []
  array.each_with_index do |n, index|
    if n != index + i
      ((index + i)...n).each { |e| missed_numbers << e }
      i = n - index
    end
  end
  (array[-1] + 1).upto(number) do |number|
    missed_numbers << number
  end
  missed_numbers
end

puts find_missed_numbers(ARGV.first.to_i, ARGV[1..-1].map(&:to_i))
