```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with args: #{args.inspect}"
  end

end

obj = MyClass.new(10)
obj.some_method(1, 2, 3) # Output: Method 'some_method' called with args: [1, 2, 3]
obj.another_method # Output: Method 'another_method' called with args: []
```