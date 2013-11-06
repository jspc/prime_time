$LOAD_PATH.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'mathn'
require 'calc'

describe Calc do
  subject(:calc) { Calc }

  context 'when instantiated' do
    it { should be_true }
    it { should respond_to :is_prime? }
    it { should respond_to :list_of_primes }
    it { should respond_to :table }
  end

  context 'when calling #is_prime?' do
    it "should return false for 1" do
      expect( calc.is_prime?(1) ).to eq(false)
    end

    it "should return false for 0" do
      expect( calc.is_prime?(0) ).to eq(false)
    end

    20.times do
      v = rand(2000)
      it "should return the same result as mathn#prime? for #{v}" do
        expect( calc.is_prime?(v) ).to eq(v.prime?)
      end
    end
  end

  context 'when calling #list_of_primes' do    
    context 'and passing no args' do
      it "should contain 10 elements" do
        expect( calc.list_of_primes).to have(10).items
      end
    end

    context 'and requesting 20 elements' do
      it "should contain 20 elements" do
        expect( calc.list_of_primes(20) ).to have(20).items
      end
    end
  end

end
