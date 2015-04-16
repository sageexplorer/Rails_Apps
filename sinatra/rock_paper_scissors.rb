require 'sinatra'
require 'sinatra/reloader'

require 'time'


get '/' do
  erb :rock_paper
end

$wins = 0
$played = 0

get '/make_answer' do
  comp_generated = ["rock", "paper", "scissors"].sample
  @your_hand = params[:answer]
  if @your_hand == comp_generated
    @ans= "Tie"
  elsif @your_hand == "rock" && comp_generated == "paper"
    @ans= "Computer wins"
    $played +=1
  elsif @your_hand == "scissors" && comp_generated == "paper"
    @ans= "You win!"
    $wins+=1
    $played +=1
  elsif @your_hand == "scissors" && comp_generated == "rock"
    @ans= "Computer wins!"
    $played +=1
  elsif @your_hand == "paper" && comp_generated == "scissors"
    @ans= "Computer wins!"
    $played +=1
  elsif @your_hand == "paper" && comp_generated == "rock"
    @ans= "You win!"
    $wins+=1
    $played +=1
  elsif @your_hand == "rock" && comp_generated == "scissors"
    @ans= "You win!"
    $wins+=1
    $played +=1
  end

  return @ans, (".....Computer generated #{comp_generated}")

end


