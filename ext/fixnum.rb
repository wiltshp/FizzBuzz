class Fixnum
  def is_evenly_divisible_by?(divisor)
    return (self % divisor == 0)
  end
end