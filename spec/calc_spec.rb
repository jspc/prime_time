$LOAD_PATH.unshift File.join(File.dirname(__FILE__), "..", "lib")

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
    [2,367,499,571].each do |v|
      it "should return true for valid prime #{v}" do
        expect( calc.is_prime?(v) ).to be_true
      end
    end

    [1,4,2028,1024].each do |v|
      it "should return false for non prime #{v}" do
        expect( calc.is_prime?(v) ).to be_false
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
