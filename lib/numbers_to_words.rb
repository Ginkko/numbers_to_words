class Fixnum
  define_method(:numbers_to_words) do
    zero_digit = { 0 => "zero" }
    single_digits = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
    teen_digits = {0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}
    number_container = self.to_s().split('')
    new_number_container = []
    final_output = ""

    number_container.each() do |num_convert|
      new_number_container.push(num_convert.to_i())
    end

    new_number_container.each() do |number|

      if number.eql?(0)
        return zero_digit.fetch(number)

      elsif new_number_container[-2].eql?(1)
        new_number_container.delete_at(-2)
        final_output = final_output.concat(teen_digits.fetch(new_number_container[-1]).concat(" "))








      else
        final_output = final_output.concat(single_digits.fetch(number).concat(" "))

      end

    end
  final_output = final_output[0..(final_output.length().-(2))]
  return final_output


  end

end
