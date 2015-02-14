###1. Self
```ruby
module Ghost
  def self.boo; end
  class << self
    def hi; end
  end
  def bye; end
end
```
Создаётся модуль с двумя модульными методами: boo и hi. Эти методы можно вызывать так: Ghost.boo и Ghost.hi. Метод bye является экземплярным для модуля Ghost, но для класса, включающий данный метод, является экземплярным, либо классовым в зависимости от способа добавления модуля в класс: include Ghost, extend Ghost соответственно.
