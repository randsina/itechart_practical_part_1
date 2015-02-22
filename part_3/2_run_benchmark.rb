require 'benchmark'
require_relative './2_hash'

ITEMS_COUNT = 1_000_000
TIMES = 1_000

my_hash = HashTable.new
ITEMS_COUNT.times { |t| my_hash[t] = t }

array = []
ITEMS_COUNT.times { |t| array[t] = t }

hash = {}
ITEMS_COUNT.times { |t| hash[t] = t }

Benchmark.bm do |x|
  x.report("my hash".ljust(7)) { TIMES.times { |t| my_hash[rand ITEMS_COUNT] } }
  x.report("hash".ljust(7)) { TIMES.times { |t| hash[rand ITEMS_COUNT] } }
  x.report("array".ljust(7)) { TIMES.times { |t| array.index(rand ITEMS_COUNT) } }
end
