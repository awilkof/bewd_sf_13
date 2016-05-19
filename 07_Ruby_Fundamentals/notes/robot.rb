require 'pry'
require 'pry-byebug'

#Create class
class Robot
#attributes declare the state, the thing that describes that instance
#the things that describe an instance of a class
#the colon in front of it makes it a sign
#attr_accessor ONLY takes in symbols
#use this part to designate which of these states is read/write
#you can have no access, so it just compares "if/then"
  attr_accessor :name, :origin, :type
  # This is what the above attr_accessor does
  # def name
  #   @name = name
  # end
  #
  # def name value
  # end

#put the method in motion with the initialize
#attributes get passed into the initialize method, and then are required
  def initialize(name, origin, type="beta")
    #
    @name = name
    @type = type
    @origin = origin
  end
#this is an instance method
#because

  def to_s
    #instance variables not need what to apply the message to, they apply to self
  end

  def flying_skills
    puts "I, #{name}, can fly!"
  end
end
# robot = Robot.new("Kirsten", "Mars", "beautiful")
# robot.flying_skills
