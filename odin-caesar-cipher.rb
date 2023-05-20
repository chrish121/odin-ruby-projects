def check_number(a)
  until a < 26 do
    a = a - 26
  end
  a
end

def check_new_num(b)
  if b > 26
    b = b - 26
  end
  b
end

def letters_to_numbers(c)
  string_numbers = (1..26).to_a
  string_letters = ('a'..'z').to_a
  any_letter = string_letters.any? do |letter| 
    letter == c.to_s.downcase
  end
  string_letters.each_with_index do |letter, index| 
    if letter == c.to_s.downcase
      return index.to_i + 1
    end
  end
end

def numbers_to_letters(d)
  string_letters = ('a'..'z').to_a
  d = string_letters[d - 1]
end

def caesar_cipher(string, number)
  number_string_array = []
  capital_letters = []
  spaces = []
  new_number = ""
  modified_array = []
  converted_array = []
  capitalized_array = []

  split_string = string.split("")

  split_string.each do |letter|
    if /[[:alpha:]]/.match(letter)
      number_string_array.push(letters_to_numbers(letter))
    else
      number_string_array.push(letter)
    end
  end

  split_string.each_index do |index| 
    if /[[:alpha:]]/.match(split_string[index])
      if split_string[index] == split_string[index].upcase
        capital_letters.push(index)
      end
    end
  end

  split_string.each_index do |index|
    if split_string[index] == " "
      spaces.push(index)
    end
  end

  new_number = check_number(number)

  number_string_array.each do |num_string|
    if /[[:digit:]]/.match(num_string.to_s)
      new_num = num_string + number
      modified_num = check_new_num(new_num)
      modified_array.push(modified_num)
    else
      modified_array.push(num_string)
    end
  end

  modified_array.each do |number|
    if /[[:digit:]]/.match(number.to_s)
      converted_array.push(numbers_to_letters(number))
    else
      converted_array.push(number)
    end
  end

  i = 0
  while i < converted_array.length do
    if split_string[i] == split_string[i].upcase
      converted_array[i] = converted_array[i].swapcase
      capitalized_array.push(converted_array[i])
    else
      capitalized_array.push(converted_array[i])
    end
    i += 1
  end

  final_string = capitalized_array.join("")
  p final_string
end

caesar_cipher("What a string!", 5)