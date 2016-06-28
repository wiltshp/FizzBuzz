require 'ext/fixnum'

class FizzBuzz
  def self.calculate_bl number_given
    return 'fizzbuzz' if number_given.is_evenly_divisible_by? 15
    return 'fizz' if number_given.is_evenly_divisible_by? 3
    return 'buzz' if number_given.is_evenly_divisible_by? 5
    return number_given
  end

  #only one return
  def self.calculate number_given
    return_val = 'fizz' if number_given.is_evenly_divisible_by? 3
    return_val = return_val.to_s + 'buzz' if number_given.is_evenly_divisible_by? 5
    return return_val || number_given
  end
end