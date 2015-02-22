# Add new methods in the class Array
class Array
  METHODS = [:even, :odd, :under, :over, :in_range]

  METHODS.each do |method|
    define_method method do |*args|
      block = case method
              when /^even$/ then ->(num) { num.even? }
              when /^odd$/ then ->(num) { num.odd? }
              when /^under$/ then ->(num) { num < args.first }
              when /^over$/ then ->(num) { num > args.first }
              when /^in_range$/ then ->(num) { args.first.include?(num) }
              end

      array_of_numbers.select(&block)
    end
  end

  private

  def array_of_numbers
    select { |e| e.is_a? Fixnum }
  end
end

p [1, 2, 3, 4, 5].even # => [2, 4]
p [1, 2, 3, 4, 5].odd # => [1, 3, 5]
p [1, 2, 3, 4, 5].under(4) # => [1, 2, 3]
p [1, 2, 3, 4, 5].over(4) # => [5]
p [1, 2, 3, 4, 5].in_range(1..3) # => [1, 2, 3]
p (1..100).to_a.even.in_range(18..30) # => [18, 20, 22, 24, 26, 28, 30]
p ['a', 1, 'b', 300, 'x', 'q', 63, 122, 181, 'z', 0.83, 0.11].even # => [300, 122]
