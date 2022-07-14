# frozen_string_literal: true

require './file_dealing'
require './input_functions'
require 'Date'

# Task 2
class Task2
  include Input_user
  include File_handle
  def avg_max_temp(inr)
    temp = []
    inr.each do |h|
      temp << h['Max Temp'].to_i
    end
    temp.sum / temp.size
  end

  def avg_min_temp(inr)
    temp = []
    inr.each do |h|
      temp << h['Min Temp'].to_i
    end
    temp.sum / temp.size
  end

  def avg_max_hum(inr)
    temp = []
    inr.each do |h|
      temp << h['Max Humid'].to_i
    end
    temp.sum / temp.size
  end
end
