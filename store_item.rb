class StoreItem
    attr_reader :item, :price, :availability
    attr_writer :price, :availability, :item

    # input_options = {
    #     item: "bike", price: "325", availability: "here" 
    # }

    def initialize(input_options)
        @item = input_options[:item]
        @price = input_options[:price]
        @availability = input_options[:availability]
    end

    def print_info
    p "our #{item} is #{availability} in store for the price of $#{price}."
    end

    # def availability=(input_availability)
    #     @availability = input_availability
    # end

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

# item1.print_info
# item1.availability = "not here"
# item1.print_info

# item2.print_info

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

