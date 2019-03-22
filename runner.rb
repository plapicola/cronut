require_relative 'require_helper'

current_path = File.expand_path(Dir.pwd)
data_file = File.read(current_path << "/data/cronut.json")
data = JSON.parse(data_file, symbolize_names: true)[:items][:item]

items = []

data.each do |item_params|
  items << Item.new(item_params)
end

binding.pry
