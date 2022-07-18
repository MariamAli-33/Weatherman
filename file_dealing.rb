# frozen_string_literal: true

require 'Date'

# module for file handling
module FileHandle
  def file_handling_year(year)
    result = []
    data = []
    content = []
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
        data_hash = {}
        data_hash['Date'] = i[0]
        data_hash['Max Temp'] = i[1]
        data_hash['Min Temp'] = i[3]
        data_hash['Max Humid'] = i[7]
        content << data_hash
      end
    end
    content
  end

  def file_handling_month(month)
    result = []
    data = []
    content = []
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
        data_hash = {}
        data_hash['Max Temp'] = i[1]
        data_hash['Min Temp'] = i[3]
        data_hash['Max Humid'] = i[7]
        content << data_hash
      end
    end
    content
  end

  def file_handling_combine(year, month)
    result = []
    data = []
    content = []
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
        data_hash = {}
        data_hash['Date'] = i[0]
        data_hash['Max Temp'] = i[1]
        data_hash['Min Temp'] = i[3]
        content << data_hash
      end
    end
    content
  end
end
