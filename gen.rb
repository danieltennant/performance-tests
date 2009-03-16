def generate_primes(max_prime)
  @prime_hash = Hash.new { |h,k| h[k] = true }
  @primes = [ 2 ]  
  3.step(max_prime, 2) do |next_prime|
    if(@prime_hash[next_prime])      
      @primes << next_prime
      if(next_prime < Math.sqrt(max_prime))
        next_prime.step(max_prime/next_prime, 2) { |i| @prime_hash[i * next_prime] = false }
      end
    end
  end
end


max = 10**6
puts "Generating all primes less than #{max}"
generate_primes(max)
puts "#{@primes.size} primes found"
