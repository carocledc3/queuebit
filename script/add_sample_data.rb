require_relative "../config/environment"
require 'smarter_csv'
options = {}
SmarterCSV.process('./samples/organisations.csv', options) do |chunk|
  chunk.each do |data_hash|
    Organisation.create!(data_hash)
  end
end
