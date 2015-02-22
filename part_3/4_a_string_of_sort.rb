def sort_string(base_string, chars)
  base_string.split('').sort_by { |c| chars.index(c) || chars.length } * ''
end

p sort_string('foos', 'of') # => "oofs"
p sort_string('string', 'gnirts') # => "gnirts"
p sort_string('banana', 'abn') # => "aaabnn"
