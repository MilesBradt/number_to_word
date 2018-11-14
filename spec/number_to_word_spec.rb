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
    expect(testing.tens(12)).to(eq("twelve"))
    testing.reset_output
    expect(testing.tens(19)).to(eq("nineteen"))
    testing.reset_output
    expect(testing.tens(15)).to(eq("fifteen"))
    testing.reset_output
  end

  it("translates a 'non-teens' two digit number to the word version") do
    testing = Number_To_Word.new()
    expect(testing.tens(25)).to(eq("twenty five"))
    testing.reset_output
    expect(testing.tens(47)).to(eq("forty seven"))
    testing.reset_output
    expect(testing.tens(82)).to(eq("eighty two"))
    testing.reset_output
    expect(testing.tens(59)).to(eq("fifty nine"))
    testing.reset_output
  end
end

describe("#hundreds") do

  it("uses the hundreds-place of a number to convert the number to words") do
    testing = Number_To_Word.new()
    expect(testing.hundreds(235)).to(eq("two hundred thirty five"))
    expect(testing.hundreds(867)).to(eq("eight hundred sixty seven"))
    expect(testing.hundreds(420)).to(eq("four hundred twenty"))
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
