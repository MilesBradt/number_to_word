class Number_To_Word

  def initialize()

    @output = ""

    @single_strings = {
      "0" => "",
      "1" => "one",
      "2" => "two",
      "3" => "three",
      "4" => "four",
      "5" => "five",
      "6" => "six",
      "7" => "seven",
      "8" => "eight",
      "9" => "nine" }

    # aka teens
    @fortnite = {
      "11" => "eleven ",
      "12" => "twelve ",
      "13" => "thirteen ",
      "14" => "fourteen ",
      "15" => "fifteen ",
      "16" => "sixteen ",
      "17" => "seventeen ",
      "18" => "eighteen ",
      "19" => "nineteen " }

    @ten_strings = {
      "1" => "ten ",
      "2" => "twenty ",
      "3" => "thirty ",
      "4" => "forty ",
      "5" => "fifty ",
      "6" => "sixty ",
      "7" => "seventy ",
      "8" => "eighty ",
      "9" => "ninety " }

  end

  def single_digits(number)
    @output = @output + @single_strings.fetch(number.to_s)
    self.remove_last_space
  end

  def remove_last_space()
    temp_array = @output.split("")
    if temp_array[-1] == " "
      temp_array.pop
      return @output = temp_array.join("")
    else
      return @output
    end
  end

  def teens(number)
    @output = @output + @fortnite.fetch(number.to_s)
    self.remove_last_space
  end

  def reset_output()
    @output = ""
  end

  def tens(number)
    # this function takes a two-digit number
    ten_digit = number.to_s.split("")[0]
    single_digit = number.to_s.split("")[1]
    if ten_digit + single_digit == "10"
      @output = @output + @ten_strings.fetch("1")
      self.remove_last_space
    elsif ten_digit != "1"
      temp = @ten_strings.fetch(ten_digit)
      @output = @output + temp
      self.single_digits(single_digit)
    else
      if @output == ""
        @output = @output + self.teens(ten_digit + single_digit)
      else
        @output = @output + self.teens(ten_digit + single_digit)
      end
    end
    @output
  end

  def hundreds(number)
    hundreds_digit = number.to_s.split("")[0]
    @output = @output + @single_strings.fetch(hundreds_digit) + " hundred "
    self.tens(number.to_s.split("").slice(1,2).join("").to_i)
  end

  def thousands(number)

    if number.to_s.length === 4
      thousands_digit = number.to_s.split("")[0]
      @output = @output + @single_strings.fetch(thousands_digit) + " thousand "
      self.hundreds(number.to_s.split("").slice(1..3).join("").to_i)
      @output
    elsif number.to_s.length === 5
      ten_thousands_digit = number.to_s.split("")[0..1]
      rest_of_it = number.to_s.split("")[2..4]
      @output = @output + tens(ten_thousands_digit.join("")) + " thousand "
      self.hundreds(rest_of_it.join(""))
      @output
    elsif number.to_s.length === 6
      hundred_thousands_digit = number.to_s.split("")[0..2]
      rest_of_it = number.to_s.split("")[3..5]
      @output = @output + hundreds(hundred_thousands_digit.join("")) + " thousand "
      binding.pry
      self.hundreds(rest_of_it.join(""))
      @output
    end
  end

  def millions(number)
    if number.to_s.length === 7
      millions_digit = number.to_s.split("")[0]
      rest_of_it = number.to_s.split("")[1..6]
      @output = @output + @single_strings.fetch(millions_digit) + " million "
      self.thousands(rest_of_it.join("").to_i)
    elsif number.to_s.length === 8
      ten_millions_digit = number.to_s.split("")[0..1]
      rest_of_it = number.to_s.split("")[2..7]
      @output = @output + tens(ten_millions_digit.join("")) + " million "
      self.thousands(rest_of_it.join(""))
    elsif number.to_s.length === 9
      hundred_millions_digit = number.to_s.split("")[0..2]
      rest_of_it = number.to_s.split("")[3..8]
      @output = @output + hundreds(hundred_millions_digit.join("")) + " million "
      self.thousands(rest_of_it.join(""))
    end
  end

  # def any_number(number)
  #   hundreds = number / 999
  #   thousands = number / 9999
  #   ten_thousands = number / 99999
  #   hundred_thousands = number / 999999
  #   millions = number / 9999999
  #   tens_millions = number / 99999999
  #   hundred_millions = number / 999999999
  #
  #   if hundreds <= 1
  #
  #
  #   number_of_digits = number.to_s.length
  #   number_to_compute = number_of_digits % 3
  #   number_split = number.to_s.split("").reverse()
  #   if number_split.length == 2
  #     self.tens(number.slice(1,2))
  #   end
  #
  # end

# array[i].concat(array[i + 1])
end
