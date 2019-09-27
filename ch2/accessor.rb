class Cafe

# attr_accessor
# Module
# private method #attr_accessor(*several_variants)
# attr_accessor(symbol, ...) -> nil attr_accessor(string, ...) -> nil
# Defines a named attribute for this module, where the name is symbol.id2name,
# creating an instance variable (@name) and a corresponding access method to read it.
# Also creates a method called name= to set the attribute.

  attr_accessor :coffee

  def initialize(coffee)
    @coffee = coffee
  end

end

cafe = Cafe.new("caffelatte")
p cafe.coffee

cafe.coffee = "americano"
p cafe.coffee
