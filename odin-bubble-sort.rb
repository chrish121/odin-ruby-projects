def bubble_sort(numbers)
  numbers_length = numbers.length
  n = 0
  while n < numbers_length - 1 do
    i = 0
    done_sorting = 0
    while i < numbers_length - 1 do
      if numbers[i] > numbers[i + 1]
        first_number = numbers[i]
        second_number = numbers[i + 1]
        numbers[i] = "#{second_number}".to_i
        numbers[i + 1] = "#{first_number}".to_i
      else
        done_sorting += 1
        if done_sorting == numbers_length - 1
          p numbers
          return numbers
        end
      end
      i += 1
    end
    n += 1 
  end
  p numbers
end

bubble_sort([4,3,78,2,0,2])