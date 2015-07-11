def fibs(n, res = [0, 1])
  n.times do |n|
    res << res[-2] + res[-1]
  end
  res.take(n)
end

def fibs_rec(n, res = [0, 1])
  n > 2 ? fibs_rec(n - 1, res << res[-2] + res[-1]) : n < 2 ? res.take(n) : res
end

tests = [13, 0, 1, 2]
tests.each do |test|
  puts "#{test.to_s} digit(s):"
  puts "fibs:     #{fibs(test)}"
  puts "fibs_rec: #{fibs_rec(test)}\n\n"
end
