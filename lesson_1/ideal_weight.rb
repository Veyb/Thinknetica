print "Ваше имя: "
name = gets.chomp.capitalize!

print "Ваш рост: "
height = gets.chomp.to_i

ideal_weight = height - 110

if ideal_weight > 0
  puts "#{name}, Ваш идеальный вес #{ideal_weight}кг"
else
  puts "Ваш вес уже оптимальный"
end
