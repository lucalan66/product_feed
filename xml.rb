require 'open-uri'
require 'nokogiri'
@doc = Nokogiri::HTML(open("https://www.myvoicecomm.com/portal/api/itemget_form.php?api=InventoryRequest&AccountNumber=13358&AccountPassword=485zmlan01&CategoryID=132&Status=1&Format=XML "))

item = @doc.css("item")

p item


item.each do |item|

puts item.css('sku')
puts item.css('onhand')

end