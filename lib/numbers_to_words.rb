class Fixnum
  define_method(:numbers_to_words) do
    zero_digit = { 0 => "zero" }
    single_digits = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
    number_container = self.to_s().split('')
    new_number_container = []
    final_output = ""

    number_container.each() do |num_convert|
      new_number_container.push(num_convert.to_i())
    end

    new_number_container.each() do |number|

      if number.eql?(0)
        return zero_digit.fetch(number)
      else
        final_output = final_output.concat(single_digits.fetch(number).concat(" "))

      end

    end
  final_output = final_output[0..(final_output.length().-(2))]
  return final_output


  end

end
