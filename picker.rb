def stock_picker(stockPrices)
    days = []
    profit = 0
    for i in 0..(stockPrices.length - 1)
        for j in (i + 1)..(stockPrices.length - 1)
            profitCalculated = stockPrices[j] - stockPrices[i]

            if profitCalculated > profit
                profit = profitCalculated
                days = [i, j]
            end
        end
    end
    puts days
end

stock_picker([17,3,6,9,15,8,6,1,10])