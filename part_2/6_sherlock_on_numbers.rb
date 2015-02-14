def find_suspect(*args)
  hash = Hash.new(0)
  args.each { |e| hash[e] += 1 }
  array = hash.values.min(2)
  array[0] != array[1] ? hash.invert[array[0]] : nil
end

p find_suspect(1, 2, 3, 4, 2, 2, 1, 4, 4) # => 3
p find_suspect(1, 1, 2, 2) # => nil
p find_suspect(1, 1, 2, 2, 2) # => 1
p find_suspect(1, 2, 3, 4, 4, 3) # => nil
