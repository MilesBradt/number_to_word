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
      @output = temp_array.join("")
    else
      @output
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
    @output = @single_strings.fetch(hundreds_digit) + " hundred "
    self.tens(number.to_s.split("").slice(1,2).join("").to_i)
  end

  def translate(number)
    number_split = number.to_s.split("").reverse()
    if number_split.length == 2
      self.tens(number.slice(1,2))
    end

  end

# array[i].concat(array[i + 1])
end
