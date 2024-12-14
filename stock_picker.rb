def stock_picker(stocks)
  stocks.each_with_index.reduce([0, 0]) do |acc, (cur_buy_day, cur_buy_index)|
    if stocks.length == (cur_buy_index + 1) then
      return acc
    end
    
    cur_profit = stocks[acc[1]] - stocks[acc[0]]
    
    remaining_sell_days = stocks.last(stocks.length - (cur_buy_index + 1))
    highest_sell_day = remaining_sell_days.max
    highest_sell_index = stocks.find_index(highest_sell_day)

    new_profit = highest_sell_day - cur_buy_day

    new_profit > cur_profit ? [cur_buy_index, highest_sell_index] : acc
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([1,2,3,4,5,6,7,8,9,10])
p stock_picker([10,9,8,7,6,5,4,3,2,1])
p stock_picker([10,9,8,7,6,50,4,3,2,1])
p stock_picker([10,9,8,7,6,50,4,3,2,100])