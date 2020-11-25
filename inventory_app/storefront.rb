module InventoryApp
  class StorefrontException < StandardError; end

  class Storefront
    attr_accessor :name
    attr_accessor :location
    attr_accessor :owner
    attr_accessor :items

    def initialize(name:, location:, owner:, template_store:)
      @name = name
      @location = location
      @owner = owner
      @items = {}
      populate_store(template_store)
    end

    def purchase_item(item_id)
      item = @items.delete(item_id)
      raise InventoryApp::StorefrontException.new("Invalid id: #{item_id}") if item.nil?
      item
    end

    private

    def populate_store(template_store)
      case template_store
      when :grocery
        5.times do |x|
          @items[x] = Item.new(type: "food", name: "Pasta #{x}", cost: 1.30)
        end
      when :boardgame
        5.times do |x|
          @items[x] = Item.new(type: "boardgame", name: "Carcasonne #{x}", cost: 30.27)
        end
      when :clothing
        5.times do |x|
          @items[x] = Item.new(type: "boardgame", name: "Dress #{x}", cost: 16.87)
        end
      else
        raise InventoryApp::StorefrontException.new("Invalid template store provided. Should be either :grocery, :boardgame, or :clothing")
      end
    end
  end
end