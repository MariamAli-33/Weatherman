# frozen_string_literal: true

require 'date'
require './file_dealing'
require './input_functions'
require 'colorize'

# bonus task
class Task4
  include InputUser
  include FileHandle
  def max_temperature_all(array)
    temperature = []
    array.each do |h|
      data_hash = {}
      data_hash[h['Date']] = h['Max Temp'].to_i
      temperature << data_hash
    end
    temperature
  end

  def min_temperature_all(array)
    temperature = []
    array.each do |h|
      data_hash = {}
      data_hash[h['Date']] = h['Min Temp'].to_i
      temperature << data_hash
    end
    temperature
  end

  def bar_draw_one(array1, array2)
    array1.zip(array2).each do |i1, i2|
      i1.each do |key, value|
        if key.include?('PKT') || key.include?("\n") || key.include?("\r") || key.include?('GST') || key.include?('PKST')
          next
        end

        print "#{key} " + " #{'+' * 10}".blue
        i2.each do |key1, value1|
          if key1.include?('PKT') || key1.include?("\n") || key1.include?("\r") || key1.include?('GST') || key.include?('PKST')
            next
          end

          puts " #{'+' * 20}".red + " #{value}" + " - #{value1}C"
        end
      end
    end
  end
end
