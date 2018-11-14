require ('rspec')
require('number_to_word')
require ('pry')

describe('#single_digits') do
  # eventually put specs here
  it("translates a number to the word version") do
    testing = Number_To_Word.new()
    expect(testing.single_digits(3)).to(eq("three"))
  end

end
