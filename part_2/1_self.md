###1. Self
```ruby
# Module Ghost is declare.
module Ghost
  # Declare modular method 'boo'. This method is called 'Ghost.boo'
  def self.boo; end
  # Also declare modular method 'hi'. This method is called 'Ghost.hi'
  class << self
    def hi; end
  end
  # Declare is an instance method for module Ghost, but you cannot create instance module Ghost and invoke method as 'Ghost.bye'.
  # You may add module in a class.
  # If you add a line 'include Ghost', method 'bye' will be a instance method of the class.
  # If you add a line 'extend Ghost', method 'bye' will be a class method of the class.
  def bye; end
end
```
