# frozen_string_literal: true

require "./file_dealing"
require "./input_functions"
require 'Date'
# Task 1
class Task1
  include Input_user
  include File_handle
  def max_temp(inr)
    day = []
    temp = []
    inr.each do |h|
      temp << h["Max Temp"].to_i
    end
    return temp.max
  end
  def date_ret_max(rr,var)
    day = []
    rr.each do |h1|
      if h1["Max Temp"].to_i == var
        day << h1["Date"]
      end
    end
    return day[rand(day.length)]
  end
  def date_ret_min(rr,var)
    day = []
    rr.each do |h1|
      if h1["Min Temp"].to_i == var
        day << h1["Date"]
      end
    end
    return day[rand(day.length)]
  end
  def date_ret_hum(rr,var)
    day = []
    rr.each do |h1|
      if h1["Max Humid"].to_i == var
        day << h1["Date"]
      end
    end
    return day[rand(day.length)]
  end
  def min_temp(inr)
    temp = []
    inr.each do |h|
      temp << h["Min Temp"].to_i
    end
    return temp.min
  end
  def max_hum(inr)
    temp = []
    inr.each do |h|
      temp << h["Max Humid"].to_i
    end
    return temp.max
  end
end

