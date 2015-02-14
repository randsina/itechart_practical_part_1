###2. Wazzup, man?
```ruby
:001>class Man
:002>  private
:003>  def method_missing(name, *args)
:004>    result = 'drink'
:005>    3.times { result << fun }
:006>    result
:007>  end
:008>end
:009>p Man.new.drank
```
На 5-ой строке '3.times { result << fun }' мы пытаемся объединить result с неизвестной переменной или методом fun. Так как данного объекта или метода не существует Ruby вызывает метод method_missing у класса Man. Получается рекурсивный бесконечный вызов метода method_missing, что приводит исключению 'переполнение стека'' и вылета программы.

Альтернативная форма решения:
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
