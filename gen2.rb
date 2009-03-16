def generate_primes(max_prime)
  @prime_hash = Hash.new { |h,k| h[k] = true }
  @primes = [ 2 ]
  
  next_prime = 3
  while (next_prime < Math.sqrt(max_prime))
    i = next_prime
    while (i <= (max_prime / next_prime))
      @prime_hash[i * next_prime] = false
      i += 2
    end
   @primes << next_prime
    next_prime += 2
    while (!@prime_hash[next_prime])
      next_prime += 2
    end
  end
  while (next_prime <= max_prime)
    if @prime_hash[next_prime]
      @primes << next_prime
    end
    next_prime += 2
  end
end

max = 10**6
puts "Generating all primes less than #{max}"
generate_primes(max)
puts "#{@primes.size} primes found"
