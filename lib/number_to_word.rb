class Number_To_Word

  def initialize()

    @output = ""

    @single_strings = {
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
      "11" => "eleven",
      "12" => "twelve",
      "13" => "thirteen",
      "14" => "fourteen",
      "15" => "fifteen",
      "16" => "sixteen",
      "17" => "seventeen",
      "18" => "eighteen",
      "19" => "nineteen" }

    @ten_strings = {
      "1" => "ten",
      "2" => "twenty",
      "3" => "thirty",
      "4" => "fourty",
      "5" => "fifty",
      "6" => "sixty",
      "7" => "seventy",
      "8" => "eighty",
      "9" => "ninety" }

  end

  def single_digits(number)
    @single_strings.fetch(number.to_s)
  end

  def teens(number)
    @fortnite.fetch(number.to_s)
  end

  def tens(number)
    # this function takes a two-digit number
    ten_digit = number.to_s.split("")[0]
    single_digit = number.to_s.split("")[1]
    if ten_digit != "1"
      temp = @ten_strings.fetch(ten_digit)
      @output = temp + " " + self.single_digits(single_digit)
    else
      @output = @output + " " + self.teens(ten_digit + single_digit)
    end
    @output
  end

  def translate(number)
    number_split = number.to_s.split("").reverse()
    if number_split.length == 2
      self.tens(number)
    end

  end

# array[i].concat(array[i + 1])
end
