fibonacci = [0, 1]

loop do
  next_num = fibonacci[-2] + fibonacci[-1]
  break if next_num >= 100
  fibonacci << next_num
end

puts fibonacci
