```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Check if the method name is known, and only then call the method
    if respond_to?(method_name)
      puts "Method '#{method_name}' called with args: #{args.inspect}"
    else
       raise NoMethodError, "undefined method '#{method_name}' for " + self.class.to_s
    end
  end
end

obj = MyClass.new(10)
obj.some_method(1, 2, 3) # Output: Method 'some_method' called with args: [1, 2, 3]
#obj.another_method # Raises NoMethodError
```