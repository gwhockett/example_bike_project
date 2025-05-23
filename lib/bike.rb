require 'bundler/setup'
require 'stamp'

class Bike
  attr_accessor :gears, :name
  attr_reader :build_date
  
  def initialize
  	@gears = 10
    @build_date = Date.today.stamp('Build Date: 2021-10-31')
  end
end