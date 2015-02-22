###3. Number Snake
```sh
$ ruby 3_number_snake.rb 5
```
###4. Happy
```sh
$ ruby 4_happy.rb 7
```
###5. Disappeared
```sh
$ ruby 5_disappeared.rb 9 1 2 4 7
```
###6. Sherlock on numbers
```sh
ruby 6_sherlock_on_numbers.rb 1 2 3 4 2 2 1 4 4
```
###For The Curious
1. Expression __?a__, where instead __a__ can be any character is converted to a string __"a"__. Such the expression __?!__:
```ruby
?!
 => "!"
```
Since Ruby everything, except *nil* and *false*, is a *truthy*, using the negation operator **!** expression **!?!** returns *false*.


2. Flip-flop operator
```ruby
10.times { |i| puts i if i == 3 .. i == 5 }
3
4
5
 => 10
```

It's a flip-flop operator. Flip-flop syntax comes from Perl.
The condition evaluates to false every time it is evaluated until the first part evaluates to true. Then it evaluates to true until the second part evaluates to true. Under the current plan, this perlism will remove from Ruby 3.0
