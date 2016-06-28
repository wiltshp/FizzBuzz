require 'ext/fixnum'

describe Fixnum do
  context '#is_evenly_divisible_by?' do
    it 'will return true if the value of this number is evenly divisible by the provided divisor' do
      number = 3

      expect(number.is_evenly_divisible_by?(1)).to be true
      expect(number.is_evenly_divisible_by?(2)).to be false
      expect(number.is_evenly_divisible_by?(3)).to be true

      number = 6

      expect(number.is_evenly_divisible_by?(1)).to be true
      expect(number.is_evenly_divisible_by?(2)).to be true
      expect(number.is_evenly_divisible_by?(3)).to be true
      expect(number.is_evenly_divisible_by?(4)).to be false
      expect(number.is_evenly_divisible_by?(5)).to be false
      expect(number.is_evenly_divisible_by?(6)).to be true

      number = 15

      expect(number.is_evenly_divisible_by?(1)).to be true
      expect(number.is_evenly_divisible_by?(2)).to be false
      expect(number.is_evenly_divisible_by?(3)).to be true
      expect(number.is_evenly_divisible_by?(5)).to be true
      expect(number.is_evenly_divisible_by?(10)).to be false
      expect(number.is_evenly_divisible_by?(15)).to be true
    end
  end

  context '#is_not_evenly_divisible_by_3_5_or_15?' do
    it 'will return true if the number is not evenly divisible by 3, 5 or 15' do
      number = 2
      expect(number.is_not_evenly_divisible_by_3_5_or_15?(3)).to be true
      expect(number.is_not_evenly_divisible_by_3_5_or_15?(5)).to be true
      expect(number.is_not_evenly_divisible_by_3_5_or_15?(15)).to be true
    end
  end
end