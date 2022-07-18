# frozen_string_literal: true

require './file_dealing'
require './input_functions'
require 'Date'
require 'colorize'
require './weatherman1'
require './weatherman2'
require './weatherman3'
require './weatherman4'
# Main function to call all modules
class Main
  def initial_data_task_yearly(object, input)
    object.file_handling_year(input)
  end

  def initial_data_task_monthly(object, input)
    object.file_handling_month(input)
  end

  def initial_data_task_combine(object, year, month)
    object.file_handling_combine(year, month)
  end

  def task_one_call(object, input, file_data)
    max_temperature = object.max_temperature(file_data)
    max_temperature_day = object.date_retrieval_max_temp(file_data, max_temperature)
    puts "Maximum temperature for the year #{input} is #{max_temperature}C on day #{max_temperature_day}"
    min_temperature = object.min_temperature(file_data)
    min_temperature_day = object.date_retrieval_min_temp(file_data, min_temperature)
    puts "Minimum temperature for the year #{input} is #{min_temperature}C on day #{min_temperature_day}"
    max_humidity = object.max_humidity(file_data)
    max_humidity_day = object.date_retrieval_humidity(file_data, max_humidity)
    puts "Maximum Humdidity for the year #{input} is #{max_humidity}% on day #{max_humidity_day}"
  end

  def task_two_call(object, file_data)
    avg_max_temperature = object.avg_max_temperature(file_data)
    puts "Average Maximum temperature is #{avg_max_temperature}"
    avg_min_temperature = object.avg_min_temperature(file_data)
    puts "Average Minimum temperature is #{avg_min_temperature}"
    avg_max_humidity = object.avg_max_humidity(file_data)
    puts "Average Maximum Humdidity is #{avg_max_humidity}"
  end

  def task_three_call(object, file_data)
    max_temperature = object.max_temperature_all(file_data)
    min_temperature = object.min_temperature_all(file_data)
    object.bar_draw(max_temperature, min_temperature)
  end

  def task_four_call(object, file_data)
    max_temperature = object.max_temperature_all(file_data)
    min_temperature = object.min_temperature_all(file_data)
    object.bar_draw_one(min_temperature, max_temperature)
  end
end

# calling
object1 = Task1.new
object2 = Task2.new
object3 = Task3.new
object4 = Task4.new
object5 = Main.new
input_year = object1.user_input
object5.task_one_call(object1, input_year, object5.initial_data_task_yearly(object1, input_year))
input_month = object2.user_input
object5.task_two_call(object2, object5.initial_data_task_monthly(object2, input_month))
input_bar_year, input_bar_month = object3.user_input_combine
object5.task_three_call(object3, object5.initial_data_task_combine(object3, input_bar_year, input_bar_month))
input_bar_iyear, input_bar_imonth = object4.user_input_combine
object5.task_four_call(object4, object5.initial_data_task_combine(object4, input_bar_iyear, input_bar_imonth))
puts 'End of Project'
