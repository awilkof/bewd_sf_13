#array_work

cars = ["Mustang", "Porsch", "BMW"]
colors = ["Blue", "Red", "Orange"]
good_words = ["Love", "Bodacious", "Passion", "Flower", "Tavern"]
trick = ["Paris", "in ", "the ", "the ", "spring."]

# .size gives the number of elements in the array
puts "1. There are #{cars.size} elements in the cars array."

#.push Pushes the given object(s) on to the end of this array.
puts "2. Add new elements/arguments to the end of the array, like #{good_words.push("More", "Motivate")}."

# .pop removes the last element, or n number of elements into a new array. - is desctrive.
puts "3. Remove the Passion from the good_words array to make it #{good_words.pop}"

# .unshift adds a new object in front of others
puts "4. Add Yellow to the colors array to become #{new_colors = colors.unshift("Yellow")}."

# .shift removes the first object of the array
puts "5. Now remove that Yellow with the shift to create #{new_colors.shift}"

# .uniq returns only an array with only unique values
puts "6. People usually misread the trick, and see it as #{trick.uniq}"

# .include? asks if there is an object in the array
puts "7. Is there any love in #{good_words}? #{good_words.include?("Love")}"
