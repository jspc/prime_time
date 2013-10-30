
class Calc
  def is_prime? v

    # 1 is a special case; it follows the rules but it only has one factor anyway
    return false if v == 1

    (2..v-1).each do |m|
      return false if v % m == 0
    end
    return true
  end

  def list_of_primes length=10, start=0
    primes = []
    position = start
    until primes.length == length
      primes << position if is_prime? position
      position+=1
    end
    return primes
  end
end
