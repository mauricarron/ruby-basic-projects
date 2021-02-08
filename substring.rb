def substrings(text, dictionary)
    text_lowercase = text.downcase
    text_arr = text_lowercase.split(" ")
    
    substring = Hash.new(0)
    text_arr.each do |word|
        dictionary.each do |dict|
            if word == dict
                substring[word] += 1
            end
        end
    end

    return substring
end

text = "Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found."

print "Write a text to analyze how many times each word matches with our dictionay: "
user_input = gets.chomp

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings(user_input, dictionary)