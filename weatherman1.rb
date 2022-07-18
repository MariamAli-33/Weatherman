# frozen_string_literal: true

require './file_dealing'
require './input_functions'
require 'Date'
# Task 1
class Task1
  include InputUser
  include FileHandle
  def max_temperature(array)
    temperature = []
    array.each do |h|
      temperature << h['Max Temp'].to_i
    end
    temperature.max
  end

  def date_retrieval_max_temp(array, var)
    day = []
    array.each do |h1|
      day << h1['Date'] if h1['Max Temp'].to_i == var
    end
    day[rand(day.length)]
  end

  def date_retrieval_min_temp(array, var)
    day = []
    array.each do |h1|
      day << h1['Date'] if h1['Min Temp'].to_i == var
    end
    day[rand(day.length)]
  end

  def date_retrieval_humidity(array, var)
    day = []
    array.each do |h1|
      day << h1['Date'] if h1['Max Humid'].to_i == var
    end
    day[rand(day.length)]
  end

  def min_temperature(array)
    temperature = []
    array.each do |h|
      temperature << h['Min Temp'].to_i
    end
    temperature.min
  end

  def max_humidity(array)
    temperature = []
    array.each do |h|
      temperature << h['Max Humid'].to_i
    end
    temperature.max
  end
end
