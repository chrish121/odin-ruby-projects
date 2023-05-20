def substrings(words, array)
  tally = {}
  new_array = []
  string_array = words.downcase.split("")
  flat_array = string_array.flatten
  joined_string = flat_array.join
  print joined_string
  array.each do |substring| 
    new_array.push(substring.downcase)
  end
  new_array.each do |substring|
    if joined_string.include?(substring)
      tally[substring] = 1
    end
  end
  print tally
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
