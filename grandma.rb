puts "Say something to say to grandma:"
you_say = gets.chomp
response = "HUH?! SPEAK UP, SONNY!,"

while you_say != 'BYE'
  years = rand(1930..1950)
  hears_response = "NO, NOT SINCE #{years}!"
  if  you_say == you_say.upcase
    puts hears_response
   else
    puts response
  end
  you_say = gets.chomp
  break if you_say =='BYE'
end


