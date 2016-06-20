# lib/string_calculator.rb

class StringCalculator
  def add(numbers_string)
    chars = numbers_string.split(",")

    #            0    1
    #            |    |
    # chars = [ "5", "7" ]

    chars[0].to_i + chars[1].to_i
  end
end
