# This is my realization of the structure of data 'Hash'
class HashTable
  CAPACITY = 1_048_576 + 7
  attr_reader :size

  def initialize
    @hash_table = Struct.new(:key, :value)
    @buckets = []
    @size = 0
  end

  def [](key)
    index = digest_key(key)
    @buckets[index] && @buckets[index].find { |pair| pair[:key] == key }[:value]
  end

  def []=(key, value)
    index = digest_key(key)
    @buckets[index] ||= []
    @buckets[index] << @hash_table.new(key, value)
    @size += 1
  end

  [:keys, :values].each do |method|
    define_method method do
      array = []
      @buckets.each do |bucket|
        next unless bucket
        bucket.each do |pair|
          array << pair[method.to_s.chop.to_sym]
        end
      end
      array
    end
  end

  def clear
    @buckets.clear
    @size = 0
  end

  def empty?
    @buckets.empty?
  end

  private

  def digest_key(key)
    key.hash % CAPACITY
  end
end
