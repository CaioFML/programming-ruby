class CsvReader
  require 'csv'
  require_relative 'product_in_stock'

  attr_accessor :products_in_stock

  def initialize
    @products_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      products_in_stock << ProductInStock.new(row["Produto"], row["Preco"])
    end
  end

  def total_value_in_stock
    sum = 0.0
    products_in_stock.each { |product| sum += product.price }
    sum
  end

  def number_of_each_product
  end
end