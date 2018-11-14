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

    # aka teens
    @fortnite = {
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen" }

    @ten_words = {
      10 => "ten",
      20 => "twenty",
      30 => "thirty",
      40 => "fourty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety" }

  end

  def single_digits(number)
    @single_words.fetch(number)
  end

  def teens(number)
    @fortnite.fetch(number)
  end

  def tens(number)
    @ten_words.fetch(number)
  end


# array[i].concat(array[i + 1])
end
