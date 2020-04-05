require './lib/fizz_buzz'

describe FizzBuzz do
  context '#calculate' do
    it 'will return the given number if the given number is not evenly divisible by 3,5,15' do
      expect(FizzBuzz.calculate(1)).to eq(1)
      expect(FizzBuzz.calculate(2)).to eq(2)
      expect(FizzBuzz.calculate(101)).to eq(101)
    end

    it 'will return fizz if the given number is evenly divisible by 3 and not 5' do
      expect(FizzBuzz.calculate(3)).to eq('fizz')
      expect(FizzBuzz.calculate(6)).to eq('fizz')
      expect(FizzBuzz.calculate(9)).to eq('fizz')
    end

    it 'will return buzz if the given number is evenly divisible by 5 and not 3' do
      expect(FizzBuzz.calculate(5)).to eq('buzz')
      expect(FizzBuzz.calculate(10)).to eq('buzz')
      expect(FizzBuzz.calculate(20)).to eq('buzz')
    end

    it 'will return fizzbuzz if the given number is evenly divisible by both 3 and 5' do
      expect(FizzBuzz.calculate(15)).to eq('fizzbuzz')
      expect(FizzBuzz.calculate(30)).to eq('fizzbuzz')
      expect(FizzBuzz.calculate(45)).to eq('fizzbuzz')
    end
  end
end
