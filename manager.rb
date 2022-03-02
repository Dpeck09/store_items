class StoreItem
  attr_reader :item, :price, :availability
  attr_writer :price, :availability, :item

  def initialize(input_options)
      @item = input_options[:item]
      @price = input_options[:price]
      @availability = input_options[:availability]
  end

  def print_info
  p "our #{item} is #{availability} in store for the price of $#{price}."
  end

end


item1 = StoreItem.new({
  item: "bike", 
  price: "325", 
  availability: "here"
})
item2 = StoreItem.new({
  item: "tv", 
  price: "700", 
  availability: "here"
})


class Manager < StoreItem
  def item_report
      p "here is what someone is looking for"
     
      p "person is ready to buy"
  end
end

manager = Manager.new({
  item: "bike",
  price: "325",
  availability: "here"
})

manager.item_report
manager.print_info