# frozen_string_literal: true

# To handle all inputs
module InputUser
  def user_input
    loop do
      puts 'Enter year/month you want to retrieve data for:'
      input = gets.chomp
      if input.empty?
        puts 'No input.'
      elsif input.include?(':')
        puts 'Illegal character ":" '
      else
        return input
      end
    end
  end

  def user_input_combine
    loop do
      puts 'Enter year you want to draw chart for:'
      year = gets.chomp
      puts 'Enter month you want to draw chart for:'
      month = gets.chomp
      if year.empty? || month.empty?
        puts 'No input.'
      elsif year.include?(':') || month.include?(':')
        puts 'Illegal character ":" '
      else
        return year, month
      end
    end
  end
end
