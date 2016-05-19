require 'pry'
require 'byebug'
#inheratance from the same folder
require_relative 'robot'
#can access library from other file in folder
#can use references from that other doc now
class Android < Robot
  attr_accessor :name, :type, :origin

  def initialize(name, origin, type="android")
    super
  end

  def writing_skills
    if origin == "Boston"
      puts "Whuddya tryin' a say?"
    else
      puts "I happen to be quite eloquent."
    end
  end
end
android = Android.new("Dan", "Boston")


android.writing_skills
