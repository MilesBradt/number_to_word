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
    expect(testing.tens(15)).to(eq(" fifteen"))
  end

  it("translates a 'non-teens' two digit number to the word version") do
    testing = Number_To_Word.new()
    expect(testing.tens(25)).to(eq("twenty five"))
  end

end

# describe('#translate') do
#
#   it("turns multi digit number to an array then reverse them") do
#     testing = Number_To_Word.new()
#     expect(testing.translate(123)).to(eq(["3", "2", "1"]))
#   end
#
# end
