print "Введите сегодняшнее число: "
day = gets.chomp.to_i

print "Введите номер текущего месяца: "
month = gets.chomp.to_i

print "Введите текущий год: "
year = gets.chomp.to_i

leap_year = year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
days_in_february = leap_year ? 29 : 28
days_in_month = [31, days_in_february, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days_summ = days_in_month[0...month - 1].sum + day

puts days_summ
