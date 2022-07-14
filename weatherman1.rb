# frozen_string_literal: true

require './file_dealing'
require './input_functions'
require 'Date'
# Task 1
class Task1
  include Input_user
  include File_handle
  def max_temp(inr)
    temp = []
    inr.each do |h|
      temp << h['Max Temp'].to_i
    end
    temp.max
  end

  def date_ret_max(arr, var)
    day = []
    arr.each do |h1|
      day << h1['Date'] if h1['Max Temp'].to_i == var
    end
    day[rand(day.length)]
  end

  def date_ret_min(arr, var)
    day = []
    arr.each do |h1|
      day << h1['Date'] if h1['Min Temp'].to_i == var
    end
    day[rand(day.length)]
  end

  def date_ret_hum(arr, var)
    day = []
    arr.each do |h1|
      day << h1['Date'] if h1['Max Humid'].to_i == var
    end
    day[rand(day.length)]
  end

  def min_temp(inr)
    temp = []
    inr.each do |h|
      temp << h['Min Temp'].to_i
    end
    temp.min
  end

  def max_hum(inr)
    temp = []
    inr.each do |h|
      temp << h['Max Humid'].to_i
    end
    temp.max
  end
end
