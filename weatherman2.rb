# frozen_string_literal: true

require './file_dealing'
require './input_functions'
require 'Date'

# Task 2
class Task2
  include InputUser
  include FileHandle
  def avg_max_temperature(array)
    temperature = []
    array.each do |h|
      temperature << h['Max Temp'].to_i
    end
    temperature.sum / temperature.size
  end

  def avg_min_temperature(array)
    temperature = []
    array.each do |h|
      temperature << h['Min Temp'].to_i
    end
    temperature.sum / temperature.size
  end

  def avg_max_humidity(array)
    temperature = []
    array.each do |h|
      temperature << h['Max Humid'].to_i
    end
    temperature.sum / temperature.size
  end
end
