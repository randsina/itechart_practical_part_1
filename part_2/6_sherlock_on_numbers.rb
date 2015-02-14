def find_suspect(*args)
  hash = Hash.new(0)
  args.each { |e| hash[e] += 1 }
  array = hash.values.min(2)
  array[0] != array[1] ? hash.invert[array[0]] : nil
end

p find_suspect(*ARGV.map(&:to_i))
