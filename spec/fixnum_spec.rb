require './ext/fixnum'

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
end
