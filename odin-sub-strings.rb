def substrings(words, array)
  tally = {}
  new_array = []
  string_array = words.downcase.split("")
  joined_array = string_array.join("")
  array.each do |substring|
    new_array.push(substring.downcase)
  end

  new_array.each do |substring|
    original_string = joined_array
    if !tally[substring]
      tally[substring] = 0
    else
      tally[substring]
    end
    if joined_array.include?(substring)
      tally[substring] += 1
      joined_array = joined_array.sub("#{substring}", "rep")
      if joined_array.include?(substring)
        while joined_array.include?(substring)
          tally[substring] += 1
          joined_array = joined_array.sub("#{substring}", "rep")
        end
      end
    end
    joined_array = original_string
  end

  modified_tally = tally.delete_if {|key, value| value == 0}
  p modified_tally
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)