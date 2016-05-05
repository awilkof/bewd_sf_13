special_words = {noun: "subject", verb: "action", adjective: "description"}
general_words = {type: "flower", action: "grow", quality: "natural"}
alpha_test = { "a" =>  200, "b" => 400, "c" => 666, "d" => 777}

#A .size is synonym to .length

#1 .merge and merge!
puts "1. Merge combines two hashes to create one: #{special_words} merged with #{general_words} shows that these are all words
:#{special_words.merge(general_words)}."
#2 .select
puts "2. Select lets you choose a block of entries that return true to your querie. Such as selecting everything put from the #{alpha_test}
hash and makes it only #{alpha_test.select{|k,v| k > "a"}}."

#3 .keys, .values
puts "3. Use the .keys and .values to create an array, respectively, of each set. So the special words of #{special_words} can become
#{special_words.keys}, and the value array being #{special_words.values}."

#4 .values, values_at
puts "4. Value_at gives you an array of the corresponding values to the keys sought. So, you can find out what the general_words array is
storing such as #{general_words.values_at("type", "action", "quality")}."

#5 .has_key? , has_value?
puts "5. If that doesn't quite work as planned, you can check to make sure there's a value you're looking for in the first place, before
carrying on. So, computer, is there the flower value stored somewhere? Answer: #{general_words.has_value?("flower")}."
