require 'pry'
require 'pry-byebug'

class Person
  #this gives getter or reader/setter or writer rights to the variables listed
  #because these

  attr_accessor :name, :age, :home_town

  def initialize(name, age, home_town)
      @name = name
      @age = age
      @home = home_town
  end

def coding_skills
    if home_town == "San Francisco"
      "I have coding skillis."
    else
      "I have been deprived, and that's okay."
    end
end

def self.assess_skills(people)
  people.each do |person|
    puts person.coding_skills
  end
end
end
  def to_s
    "Hey! I am Person, my name is #{@name}"
  end

person = Person.new("Andrea", 30, "LA")
person_2 = Person.new("Joe", 97, "San Francisco")
person_3 = Person.new("Jane", 97, "Canton")
person_4 = Person.new("Jane", 97, "San Francisco")
people = []
people.push(person, person_2, person_3, person_4)

Person.assess_skills(people)
