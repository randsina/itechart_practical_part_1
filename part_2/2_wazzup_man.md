###2. Wazzup, man?
```ruby
class Man
  private
  def method_missing(name, *args)
    result = 'drink'
    # We try combine 'result' with an unknown variable or method 'fun'.
    # But this object or method doesn't exist and Ruby invokes a method 'method_missing' in class Man.
    # This result in a endless recursive call of method 'method_missing' and exception 'SystemStackError'.
    3.times { result << fun }
    result
  end
end
p Man.new.drank
```

An alternative form of solution:
```ruby
class Man
  private
  def method_missing(name, *args)
    result = 'drink'
    3.times { result << fun } if respond_to?(:fun)
    result
  end
end
p Man.new.drank
```
