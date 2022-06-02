input_data = STDIN.read.split("\n")

stock_start_index = input_data.index('current_stock')
stock_update_index = input_data.index('stock_update')

current_stock = input_data[1...stock_update_index] 
current_stock.each_with_index do |item, index|
  current_stock[index] = item.split(',')
  current_stock.delete_at(index) if current_stock[index].last == 'out of stock'
end

update_for_stock = input_data[(stock_update_index+1)..input_data.length] 
update_for_stock.each_with_index do |item, index|
  update_for_stock[index] = item.split(',')
end
