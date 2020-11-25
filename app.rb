require "./inventory_app/item"
require "./inventory_app/storefront"

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

s = InventoryApp::Storefront.new(name: "Hello world", location: "Seattle", owner: "Jono", template_store: :grocery)

puts s.inspect

puts "Items in store: #{s.items}"

# s1 = InventoryApp::Storefront.new(name: 1234, location: :seattle, owner: Person.new("Jono"), template_store: :grocery)