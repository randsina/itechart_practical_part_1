def happy?(number)
  array = [number]
  square_of_digits(number, array) ? 'Happy' : 'Unhappy'
end

def square_of_digits(number, array)
  sum = number.to_s.split('').map { |n| n.to_i**2 }.reduce(:+)
  case
  when sum == 1 then true
  when array.include?(sum) then nil
  else
    array << sum
    square_of_digits(sum, array)
  end
end

p happy?(ARGV.first.to_i)
