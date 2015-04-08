# Find leap Year
# Leap years are years divisible by four (like 1984 and 2004). However, years divisible by 100 are not leap years (such as 1800 and 1900)
# unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years).

  puts "What is the starting year?"
  starting_year = gets.chomp.to_i
  puts "What is the ending year?"
  ending_year = gets.chomp.to_i

  puts "Leap Years that fall in that range are:"
  while starting_year <= ending_year

    puts starting_year if starting_year % 4 == 0 && starting_year % 100 != 0 || starting_year % 400 ==0

    starting_year += 1


  end