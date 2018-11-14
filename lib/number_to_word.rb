class Number_To_Word

  def initialize()

    @single_words = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine" }

    @ten_words = {
      1 => "ten",
      2 => "twenty",
      3 => "thirty",
      4 => "fourty",
      5 => "fifty",
      6 => "sixty",
      7 => "seventy",
      8 => "eighty",
      9 => "ninety" }

  end

  def single_digits(number)
    @single_words.fetch(number)
  end

end
