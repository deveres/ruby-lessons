print "Введите день: "
dt = gets.chomp.to_i
print "месяц: "
mn = gets.chomp.to_i
print "и год: "
yr = gets.chomp.to_i
days_in_a_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days_in_a_month[1] = 29 if yr % 400==0 || (yr%4==0 && yr%100!=0)

sum = 0
days_in_a_month[0..mn-1].each do |item|
  sum+=item
end

sum+=dt-days_in_a_month[mn-1]

puts "Порядковый номер даты #{sum}"