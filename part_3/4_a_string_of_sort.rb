def sort_string(string, chars)
  chars.split('').uniq.reverse.each do |char|
    new_str = string.split('').select {|c| c == char }.join
    string.delete! char
    string = new_str + string
  end
  string
end

p sort_string('foos', 'of') # => "oofs"
p sort_string('string', 'gnirts') # => "gnirts"
p sort_string('banana', 'abn') # => "aaabnn"
