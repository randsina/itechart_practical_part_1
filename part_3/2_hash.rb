# This is my realization of the structure of data 'Hash'
class HashTable
  CAPACITY = 1_048_576 + 7

  def initialize
    @hash_table = Struct.new(:key, :value)
    @buckets = []
    @count = 0
  end

  def [](key)
    index = digest_key(key)
    @buckets[index].find { |pair| pair[:key] == key }[:value]
  end

  def []=(key, value)
    index = digest_key(key)
    @buckets[index] ||= []
    @buckets[index] << @hash_table.new(key, value)
    @count += 1
  end

  [:keys, :values].each do |method|
    define_method method do
      array = []
      @buckets.each do |bucket|
        if bucket
          bucket.each do |pair|
            array << pair[method.to_s.chop.to_sym]
          end
        end
      end
      array
    end
  end

  def clear
    @buckets.clear
    @count = 0
  end

  def empty?
    @buckets.empty?
  end

  def size
    @count
  end

  private

  def digest_key(key)
    key.hash % CAPACITY
  end
end
