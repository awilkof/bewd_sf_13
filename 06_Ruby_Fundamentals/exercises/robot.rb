#Classes have state and behavior
#State & Object Factory: factory that creates and instiantes robots
#Behavior: Collection of class methods, instance methods, instance variable, local variables, constants etc.,

#create a robot factory
#Create a class method that will create 100 robots
  #inside of that, triggers another class method that randomly makes robots
  #That randomly selects a name, type, and origin, from 3 different arrays that I will define
  #The random robot maker, also needs: empathy, flying skills, laser fighting
  #These qualities should get assigned to each one randomly

require 'pry'
require 'pry-byebug'

#Class- including - getter/setter method, required aspects of robot in the instance,
#
class Robot

  #creates getter && setter methods for each attribute
  attr_accessor :name, :type, :sector

  #instance_factory to support creating a new robot using Robot.new
  def initialize(name, type, sector)
    @name = name
    @type = type
    @sector = sector
  end

  #class methods - therefore, still inside of the class
#take # of arguments and make into how many robots are created
  def self.make_robots(number)
    number_of_robots = number.to_i
    # Use times to go through block, but why doesn't need an (int) for how many times?
    number_of_robots.times do
      Robot.randomize_robot_maker
    end


  def self.randomize_robot_maker
    names = ["Ron", "Tony", "Sam", "Mike", "Nill", "Joanna", "Glork"]
    types = [ "Fusion", "AV8R", "LCD", "Monotony" ]
    sectors = ["Sector C", "Sector Irrational Number", "Sector 97", "Sector 9"]

#use .sample to select random object in each of the arrays above
    name = names.sample
    type = types.sample
    sector = sectors.sample

    robo_status = Robot.new(name, type, sector)
    puts "Sector #{sector} has just birthed #{name}, robot type #{type}."
    #Go through the whole method and return the final "puts" above
    return robo_status
  end
end
  #instance methods can only be called by instances of a class
  def can_feel
    if type == "Fusion"
      has_heart
    else
      puts "Am I now part hu-man? #{remorse}"
    end
  end

  def has_heart
    puts "What are these... feelings?
    I #{name}, a metalic #{type} feel a human-like emotion?"
  end

  #this is an instance method
  def flying_skills
      lift_off
  end

  def lift_off
    puts "This is #{name} #{type} calling in for lift off with my awesome wings!"
  end

  def laser_powers
    if type == "LCD"
      open_your_eyes
    else
      puts "I guess us #{type}s I don't have laser vision after all. Sad face."
  end

  def open_your_eyes
    puts "Holy light beams of glory! Anybody got a laser instruction manual?"
  end

  def part_human
    puts "Who am I? Oh, I guess I'm #{name}. But what have I done?!"
    has_heart
  end

  def remorse
    puts "Have I, #{name}, #{type} benefited from the deletion of a human soul?"
  end
end

Robot.randomize_robot_maker
Robot.make_robots(25)

new_digital_soul = Robot.randomize_robot_maker
new_digital_soul.flying_skills
new_digital_soul.laser_powers
new_digital_soul.part_human
