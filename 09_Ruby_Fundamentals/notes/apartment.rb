require 'pry'
require 'pry-byebug'

#the apartment maker itself
class Apartment

#makes 2 methods that allows these instances to be read/write modified
  attr_accessor :name, :url, :price, :neighborhood, :date
#Required to have a new class, and in the () have the required pieces
#Creates the instance of each of these attributes as part of the instance
  def initialize(name,url,price,neighborhood, date)
    @name = name
    @url = url
    @price = price
    @neighborhood = neighborhood
    @date = date
  end
end
