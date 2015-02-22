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
