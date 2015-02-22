def jerseys_sum(args)
  args.map(&:to_i).reduce(:+) || 0
end

p jerseys_sum(ARGV)
