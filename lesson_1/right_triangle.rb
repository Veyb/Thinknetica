print "Сторона А = "
side_a = gets.chomp.to_f

print "Сторона B = "
side_b = gets.chomp.to_f

print "Сторона C = "
side_c = gets.chomp.to_f

triangle = [side_a, side_b, side_c].sort!
sum_squares_legs = triangle[0]**2 + triangle[1]**2
right_triangle = sum_squares_legs == triangle[2]**2

if (side_a == side_b) && (side_b == side_c)
  puts "Это равносторонний, не прямоугольный треугольник"
elsif right_triangle && (triangle[0] == triangle[1])
  puts "Это равнобедренный, прямоугольный треугольник"
elsif right_triangle
  puts "Это прямоугольный треугольник"
else
  puts "Это не прямоугольный треугольник"
end
