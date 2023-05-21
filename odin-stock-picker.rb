def stock_picker(stock_prices)
  profits = []
  final_profits = []
  ready = "no"
  arranged_prices = stock_prices.sort
  arranged_prices.each do |price|
    highest_price = price
    i = 0
    while i < arranged_prices.length
      profit = highest_price - arranged_prices[i]
      profits.push([highest_price, arranged_prices[i], profit])
      i += 1
    end
  end

  profits.each_with_index do |profits_row, profits_index|
    if profits_row[2] < 0
      final_profits
    else
      final_profits.push(profits_row)
    end
  end

  sorted_profits = final_profits.sort_by{|final_profits_row| final_profits_row[2]}

  i = -1
  until ready == "yes"
    highest_price_index = ""
    lowest_price_index = ""
    highest_price_two = sorted_profits[i][0]
    lowest_price_two = sorted_profits[i][1]
    stock_prices.each_with_index do |original_price, original_index|
      if original_price == highest_price_two
        highest_price_index = original_index
      end
      if original_price == lowest_price_two
        lowest_price_index = original_index
      end
    end
    if highest_price_index > lowest_price_index
      print best_days = [lowest_price_index, highest_price_index]
      return best_days
      ready == "yes"
    end
    i += -1
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])