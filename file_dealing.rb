# frozen_string_literal: true

require 'Date'

# module for file handling
module FileHandle
  def file_handling_year(year)
    result = []
    data = []
    cont = []
    files = Dir['Weather_data/*.txt']
    files.each do |filename|
      next unless File.read(filename).include?(year)

      lines = File.readlines(filename)
      lines.each do |line|
        result << line
      end
      result.each do |i|
        data << i.split(',')
      end
      data.each do |i|
        req = {}
        req['Date'] = i[0]
        req['Max Temp'] = i[1]
        req['Min Temp'] = i[3]
        req['Max Humid'] = i[7]
        cont << req
      end
    end
    cont
  end

  def file_handling_month(month)
    result = []
    data = []
    cont = []
    files = Dir['Weather_data/*.txt']
    files.each do |filename|
      next unless filename.match(/#{Date::ABBR_MONTHNAMES[month.to_i]}/)

      lines = File.readlines(filename)
      lines.each do |line|
        result << line
      end
      result.each do |i|
        data << i.split(',')
      end
      data.each do |i|
        req = {}
        req['Max Temp'] = i[1]
        req['Min Temp'] = i[3]
        req['Max Humid'] = i[7]
        cont << req
      end
    end
    cont
  end

  def file_handling_com(year, month)
    result = []
    data = []
    cont = []
    puts year
    puts month
    files = Dir['Weather_data/*.txt']
    files.each do |filename|
      next unless filename.include?(year) && filename.match(/#{Date::ABBR_MONTHNAMES[month.to_i]}/)

      lines = File.readlines(filename)
      lines.each do |line|
        result << line
      end
      result.each do |i|
        data << i.split(',')
      end
      data.each do |i|
        req = {}
        req['Date'] = i[0]
        req['Max Temp'] = i[1]
        req['Min Temp'] = i[3]
        cont << req
      end
    end
    cont
  end
end
