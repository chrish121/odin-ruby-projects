def substrings(words, array)
  tally = {}
  new_array = []
  string_array = words.downcase.split(" ")
  array.each do |substring| 
    new_array.push(substring.downcase)
  end

  string_array.each do |string|
    new_array.each do |substring|
      if !tally[substring]
        tally[substring] = 0
      else
        tally[substring]
      end
      if string.include?(substring)
        tally[substring] += 1
      end
    end
  end

  modified_tally = tally.delete_if {|key, value| value == 0}
  p modified_tally
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
