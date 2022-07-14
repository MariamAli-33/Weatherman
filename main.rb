# frozen_string_literal: true

require "./file_dealing"
require "./input_functions"
require 'Date'
require "colorize"
require "./weatherman1"
require "./weatherman2"
require "./weatherman3"
require "./weatherman4"

class Main
  obj1 = Task1.new
  x = obj1.user_input
  y = obj1.file_handling_year(x)
  maxt = obj1.max_temp(y)
  maxtd = obj1.date_ret_max(y, maxt)
  puts "Maximum temperature for the year #{x} is #{maxt}C on day #{maxtd}"
  mint = obj1.min_temp(y)
  mintd = obj1.date_ret_min(y, mint)
  puts "Minimum temperature for the year #{x} is #{mint}C on day #{mintd}"
  maxh = obj1.max_hum(y)
  maxhd = obj1.date_ret_hum(y, maxh)
  puts "Maximum Humdidity for the year #{x} is #{maxh}% on day #{maxhd}"
  obj2 = Task2.new
  x1 = obj2.user_input
  y1 = obj2.file_handling_month(x1)
  amaxt = obj2.avg_max_temp(y1)
  puts "Average Maximum temperature is #{amaxt}"
  amint = obj2.avg_min_temp(y1)
  puts "Average Minimum temperature is #{amint}"
  amaxh = obj2.avg_max_hum(y1)
  puts "Average Maximum Humdidity is #{amaxh}"
  obj3 = Task3.new
  x2, t = obj3.user_input_combine
  y2 = obj3.file_handling_com(x2, t)
  maxt1 = obj3.max_temp_all(y2)
  mint1 = obj3.min_temp_all(y2)
  obj3.bar_draw(maxt1, mint1)
  obj4 = Task4.new
  x3, t1 = obj4.user_input_combine
  y3 = obj4.file_handling_com(x3, t1)
  maxt2 = obj4.max_temp_all(y3)
  mint2 = obj4.min_temp_all(y3)
  obj4.bar_draw_one(mint2, maxt2)
  puts "End of Project"

end
