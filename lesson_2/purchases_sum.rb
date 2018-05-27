basket = {}
purchase_prices = 0

loop do
  print "Введите название товара: "
  name = gets.chomp.downcase
  break if name == "стоп"

  print "Введите цену товара: "
  price = gets.chomp.to_f

  print "Введите количество товара: "
  count = gets.chomp.to_i

  basket[name] = {price: price, count: count}
end

puts basket
basket.each do |name, purchase|
  purchase_price = purchase[:price] * purchase[:count]
  puts "Сумма за #{name}: #{purchase_price}"
  purchase_prices += purchase_price
end

puts "Сумма всех покупок: #{purchase_prices}"
