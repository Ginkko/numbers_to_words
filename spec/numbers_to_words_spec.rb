require('rspec')
require('numbers_to_words')
require('pry')

describe('Fixnum#numbers_to_words') do
# NO LONGER APPLICABLE Numbers to words takes a number and converts it in to an array with as many elements as there are digits.

  # NO LONGER APPLICABLE it("splits a multi digit number into an array") do
  #   expect(451.numbers_to_words()).to(eq([4,5,1]))
  # end

#Numbers to words takes a number from 0 to 9 and converts it to a word.

  it("takes a number from 0 to 9 and converts it into a word") do
    expect(0.numbers_to_words()).to(eq("zero"))
  end

#Numbers to words takes a number from 10-19 and converts it to a word.
  it("takes a number from 10 to 19 and converts it to a word") do
      expect(14.numbers_to_words()).to(eq("fourteen"))
  end


#Numbers to words takes  from a multiple of 10 (starting at 20) through 90 and converts it to a word.

#Numbers combines the words generated into a single sentence representing the origional number.
  it("concats the converted number in word form and adds them to the sentence.") do
    expect(369.numbers_to_words()).to(eq("three six nine"))
  end

#Numbers to words checks the number length and adds the word "hundred", "thousand", etc when applicable.
  #this needs to be cascading - IE Ten Thousand still needs "thousand" and "hundred"




end
