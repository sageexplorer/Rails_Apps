beer = 99

while beer >= 0

  if beer == 0
    beer_left = "No more"
    puts "#{beer_left} bottles of beer on the wall, #{beer_left} bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall."
    break
  end

  puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer.
  Take one down and pass it around, #{beer-1} bottles of beer on the wall.
  "
  beer -= 1


end