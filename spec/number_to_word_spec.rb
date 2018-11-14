require ('rspec')
require('number_to_word')
require ('pry')

describe('#single_digits') do

  it("translates a single digit number to the word version") do
    testing = Number_To_Word.new()
    expect(testing.single_digits(3)).to(eq("three"))
  end

end

describe('#teens') do

  it("translates a 'teens' number to the word version") do
    testing = Number_To_Word.new()
    expect(testing.teens(13)).to(eq("thirteen"))
  end

end

describe('#tens') do

  it("translates a 'non-teens' two digit number to the word version") do
    testing = Number_To_Word.new()
    expect(testing.tens(10)).to(eq("ten"))
  end

end
