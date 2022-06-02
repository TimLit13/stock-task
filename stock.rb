# STDIN.read.split('\n').each do |a|
#   puts a
# end


input_data = STDIN.read.split("\n")

stock_start_index = input_data.index('current_stock')
stock_update_index = input_data.index('stock_update')