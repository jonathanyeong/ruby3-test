module InventoryApp
  class Item
    attr_accessor :type
    attr_accessor :name
    attr_accessor :cost

    def initialize(type:, name:, cost:)
      @type = type
      @name = name
      @cost = cost
    end
  end
end