# frozen_string_literal: true

require 'date'
require "./file_dealing"
require "./input_functions"
require "colorize"

class Task3
  include Input_user
  include File_handle
  def max_temp_all(arr)
    day = []
    temp = []
    arr.each do |h|
      var= Hash.new
      var[h["Date"]] = h["Max Temp"].to_i
      temp << var
    end
    return temp
  end
  def min_temp_all(arr)
    day = []
    temp = []
    arr.each do |h|
      var= Hash.new
      var[h["Date"]] = h["Min Temp"].to_i
      temp << var
    end
    return temp
  end
  def bar_draw(arr1, arr2)
    arr1.zip(arr2).each do |i1,i2|
      i1.each do |key, value|
        next if key.include?("PKT") || key.include?("\n") || key.include?("\r") || key.include?("GST")
        puts "#{key} "+" #{"+"*20}".red + " #{value}C"
        i2.each do |key, value|
          next if key.include?("PKT") || key.include?("\n") || key.include?("\r") || key.include?("GST")
          puts "#{key} "+" #{"+"*10}".blue + " #{value}C"
        end
      end
    end
  end
end

