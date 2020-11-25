require "./inventory_app/item"
require "./inventory_app/storefront"

s = InventoryApp::Storefront.new(name: "Hello world", location: "Seattle", owner: "Jono", template_store: :grocery)

puts s.inspect

puts "Items in store: #{s.items}"
