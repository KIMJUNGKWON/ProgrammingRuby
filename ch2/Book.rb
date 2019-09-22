class Book

  # initialize()
  # Class
  # public method #initialize(*several_variants) → Class
  # Creates a new anonymous (unnamed) class with the given superclass (or Object if no parameter is given).
  # 생성자로서 기능하며 overriding 하여 기능 및 param을 관리한다.
  # .new에 object 가 생성되면서 호출되게 된다.

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def print_info
    p "isbn : #{@isbn} // price : #{@price}"
  end

end

# .new()
# Class
# public method #new(*args) → Object
# Calls allocate to create a new object of class's class, then invokes that object's initialize method, passing it args.
# 루비에서는 .new 를 통해서 초기화되지 않은 객체를 메모리에 할당하고 new 매개 변수를 이용해 그 객체의 initialize 메서드를 호출한다
firstBook = Book.new("124ncsh34","5000")
puts(firstBook) # => #<Book:0x00007f7f6f874290>
p(firstBook) # => #<Book:0x00007f7f6f874290 @isbn="124ncsh34", @price="5000">
firstBook.print_info() # => "isbn : 124ncsh34 // price : 5000"






