require 'pry'
require 'pry-byebug'

#just the class, cookie cutter of the apartment spaces
class Apartment
  attr_accessor :name, :url, :price, :neighborhood
#Creates an instance of each of these qualities
  def initialize(name,url,price,neighborhood)
    @name = name
    @url = url
    @price = price
    @neighborhood = neighborhood
  end
end
