
greeting = "Wassup "
name = "Andrea Michelle"
subject = "world"
fun = "ALL THE THINGS"


# .length Returns the character length of str.
puts "1. The length method counts the counts the number of characters in #{name} which is #{name.length}."

# .Prepend—Prepend the given string to str.
puts "2. The prepend method adds an argument, such as Hellooo in front of #{subject},
resulting in #{subject.prepend("Hellooo")}."

#Concatenates the given object to str.
#If the object is a Integer, it is considered as a codepoint, and is
#converted to a character before concatenation.
puts "3. The append method adds the #{subject} after the #{greeting} to create #{greeting<<subject}."


#.strip Returns a copy of str with leading and trailing whitespace removed.
puts "4. Strip removes any spaces around #{greeting} and just returns #{greeting.strip}."

#Returns an array of characters in str. This is a shorthand for str.each_char.to_a.

puts "5. The chars method returns the string #{greeting} into an array of separate string characters like #{greeting.chars}
."

# .downcase Changes everything to lowercase
puts "6* Use downcase to change all uppercase characters to #{fun} to #{fun.downcase}."
