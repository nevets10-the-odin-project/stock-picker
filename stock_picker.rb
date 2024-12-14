def stock_picker(stocks)
  stocks.reduce([]) do |acc, cur|
    p cur
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])