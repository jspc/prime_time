
module Calc
  def self.is_prime? v
    # 1 is a special case; it follows the rules but it only has one factor anyway
    return false if v == 1

    (2..v-1).each do |m|
      return false if v % m == 0
    end
    return true
  end

  def self.list_of_primes length=10, start=1
    primes = []
    position = start
    until primes.length == length
      primes << position if is_prime? position
      position+=1
    end
    return primes
  end

  def self.table prime_list
    str = '*'
    prime_list.each { |p| str += "\t#{p}\t" }
    str += "\n"
    prime_list.each do |x_val|
      str += "#{x_val}"
      prime_list.each do |y_val|
        str += "\t#{x_val * y_val}\t"
      end
      str += "\n"
    end
    return str
  end
end
