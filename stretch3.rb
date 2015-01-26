# 10% everything
# no tax = books, food, medical products

# 15% all imports


# State
# Tax or exempt
# Imported or not



# Behavior

# free
# 10% tax
# 15% tax
# total




class Item
	attr_accessor :quantity, :item, :type, :price, :newprice, :tax
	def initialize (quantity, item, type, price, newprice, tax)
		@quantity = quantity
		@item = item
		@type = type
		@price = price
		@newprice = newprice
		@tax = 0
	end

	def type 
		if @type == "taxfree"
			 @newprice = @price *= 1
			 @price = price
			 @tax = 1
		elsif @type == "imported"
			 @newprice = @price *= 1.15
			 @price = price
			 @tax = 1.15
		elsif @type == "taxfree imported"
			@newprice = @price *= 1.05
			@price = price
			@tax = 1.05
		elsif @type == "local"
			@newprice = @price *= 1.10
			@price = price
			@tax = 1.10
		end
	end
	

	def output_1
        if @type == "imported" 
        puts "#{@quantity} #{@type} #{@item}: #{@newprice}"
        elsif @type == "taxfree imported"
        puts "#{@quantity} imported #{@item}: #{@newprice}"
        else
		puts "#{@quantity} #{@item}: #{@newprice}"
		end
	end

end

class Receipt
	attr_accessor :pricebefore, :priceafter
	def initialize(pricebefore, priceafter)
		@pricebefore = pricebefore
		@priceafter = priceafter

	end

	def tax(priceebefore, priceafter)
		
        totalpb = pricebefore.inject{|sum,x| sum + x }
    

    	totalpa = priceafter.inject{|sum,x| sum + x }
    	
    	tax = totalpa - totalpb 
    	puts "Sales Taxes: #{tax}"
    	puts "Total: #{totalpa}"

	end

end


#Output 1

books = Item.new(1, "book", "taxfree", 12.49, "", "")
musiccd = Item.new(1, "music CD", "local", 14.99, "", "")
chocolatebar = Item.new(1, "chocolate bar", "taxfree", 0.85, "", "")
pricesbefore = [books.price, chocolatebar.price, musiccd.price]
musiccd.type
musiccd.output_1
chocolatebar.type
chocolatebar.output_1
books.type
books.output_1
pricesafter = [books.newprice, chocolatebar.newprice, musiccd.newprice]

receipt1 = Receipt.new(pricesbefore, pricesafter)
receipt1.tax(pricesbefore, pricesafter)

# Output 2

importchocolate = Item.new(1, "box of chocolate", "taxfree imported", 10, "", "")
importperfume = Item.new(1, "bottle of perfume", "imported", 47.50, "", "")
pricesbefore2 = [importchocolate.price, importperfume.price]
importchocolate.type
importchocolate.output_1
importperfume.type
importperfume.output_1
pricesafter2 = [importchocolate.newprice, importperfume.newprice]

receipt2 = Receipt.new(pricesbefore2, pricesafter2)
receipt1.tax(pricesbefore2, pricesafter2)

#output 3
importperfume2 = Item.new(1, "bottle of perfume", "imported", 32.19, "", "")
perfume = Item.new(1, "bottle of perfume", "local", 20.89, "", "")
headache = Item.new(1, "packet of headache pills", "taxfree", 9.75, "", "")
chocolatebar3 = Item.new(1, "box of chocolate", "taxfree imported", 11.85, "", "")
pricesbefore3 = [importperfume2.price, perfume.price, headache.price, chocolatebar3.price]
importperfume2.type
importperfume2.output_1
perfume.type
perfume.output_1
headache.type
headache.output_1
chocolatebar3.type
chocolatebar3.output_1
pricesafter3 = [importperfume2.newprice, perfume.newprice, headache.newprice, chocolatebar3.newprice]

receipt3 = Receipt.new(pricesbefore3, pricesafter3)
receipt3.tax(pricesbefore3, pricesafter3)