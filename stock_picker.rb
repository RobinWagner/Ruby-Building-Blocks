def stock_picker(prices)
  max_profit = 0
  dates = [0,0]
  for i in 0...prices.size
    for j in i+1...prices.size
      profit = prices[j] - prices[i]
      if profit > max_profit
        max_profit, dates[0], dates[1] = profit, i, j
      end
    end
  end
  p dates
end

# Test case
stock_picker([17,3,6,9,15,8,6,1,10])