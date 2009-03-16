def recurse(num)
  return 0 if (num == 0)
  1.upto(10) { |i| recurse(num - 1)}
end

recurse(6)