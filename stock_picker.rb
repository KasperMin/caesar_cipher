def stock_picker prices_and_days
  profit_max = 0;
  days_to_buy_and_sell = []

  prices_and_days.each_with_index do |price_high, day_to_sell|
      prices_and_days.each_with_index do |price_low, day_to_buy|
         profit = price_high - price_low
         if day_to_sell > day_to_buy && profit > profit_max
           profit_max = profit
           days_to_buy_and_sell = [].push(day_to_buy, day_to_sell)
         end
      end
  end
  puts "Maxium yield of #{profit_max}, if bougth and sold on #{days_to_buy_and_sell}"
  days_to_buy_and_sell
end

stock_picker [17,3,6,9,15,8,6,1,10]
