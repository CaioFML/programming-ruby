# text = "asdasdoiasjdiPythonashduhzxucnaiPearladadshadua"
# puts text.gsub(/Pearl|Python/, "Ruby")

class ProductInStock
  attr_accessor :product, :price

  def initialize(product, price)
    @product = product
    @price = Float(price)
  end

  def to_s
    "PRODUCT: #{product}, PRICE: #{price}"
  end
end
