def spiral(n)
  spiral = Array.new(n) { Array.new(n) }
  runs = n.downto(0).each_cons(2).to_a.flatten
  delta = [[1, 0], [0, 1], [-1, 0], [0, -1]].cycle
  x, y, value = -1, 0, -1
  runs.each do |run|
    dx, dy = delta.next
    run.times { spiral[y += dy][x += dx] = (value += 1) }
  end
  spiral
end

def print_matrix(m)
  m.size.times do |i|
    m.reverse_each do |a|
      print "#{a[i]}".ljust(4)
    end
    puts
  end
end

print_matrix spiral(ARGV.first.to_i)
