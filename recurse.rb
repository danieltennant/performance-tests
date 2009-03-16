require 'benchmark'

def recurse(num)
  return 0 if (num == 0)
  1.upto(10) { |i| recurse(num - 1)}
end

Benchmark.bm(40) do |bm|
  5.times do
    bm.report("recursion benchmark") do
      recurse(6)
    end
  end
end
