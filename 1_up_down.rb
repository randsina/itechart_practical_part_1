#!/usr/bin/env ruby
(1..100).each do |n|
  str = ''
  str += 'Up' if n % 3 == 0
  str += 'Down' if n % 5 == 0
  puts str == '' ? n : str
end
