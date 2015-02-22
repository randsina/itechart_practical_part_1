(1..100).each do |n|
  str = 'Up' if n % 3 == 0
  str = "#{str}Down" if n % 5 == 0
  puts str ? str : n
end
