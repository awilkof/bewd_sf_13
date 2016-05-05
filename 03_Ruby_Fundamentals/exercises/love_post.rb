require 'pry'
require 'pry-byebug'

#1 Request name from user and strip it
def get_lover_name
  puts "What is your future lover's name? \n"
  lover_name = gets.strip.downcase
  get_response(lover_name)
end


#2 capture the response from the user
def get_response(lover_name)
  puts "So, you want to marry #{lover_name.capitalize}?"
  puts "Let me know if I am 'right' or 'wrong' \n"
  response = gets.strip.downcase
  get_valid_response(response, lover_name)

end

#3 give advice

def get_valid_response(response, lover_name)
  case response
  when 'right'
    puts "Then call #{lover_name.capitalize}."
  when 'wrong'
    puts "You seem confused, maybe that's why you're having trouble getting with #{lover_name.capitalize}."
  else
    puts "Sorry, please try again."
    get_lover_name
  end
end

get_lover_name
