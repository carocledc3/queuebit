require_relative "../config/environment"
require 'smarter_csv'
options = {}
SmarterCSV.process('./samples/rooms.csv', options) do |chunk|
  chunk.each do |data_hash|
    Room.create!(data_hash)
  end
end
