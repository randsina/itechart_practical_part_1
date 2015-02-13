def jerseys_sum(args)
  puts args.map(&:to_i).reduce(:+)
end

jerseys_sum(ARGV)
