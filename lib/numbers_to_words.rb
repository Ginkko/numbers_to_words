class Fixnum
  define_method(:numbers_to_words) do
    zero_digit = { 0 => "zero" }
    single_digits = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
    number_container = self.to_s().split('')
    new_number_container = []


    number_container.each() do |num_convert|
      new_number_container.push(num_convert.to_i())
    end

    new_number_container.each() do |number|

      if number.eql?(0)
        return zero_digit.fetch(number)
      else
        return single_digits.fetch(number)
      end

    end

  end

end
