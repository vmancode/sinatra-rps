require "sinatra"
require "sinatra/reloader"

get("/") do
  
erb(:homepage)


  
end


get("/rock") do
  moves1 = ["rock", "paper", "scissors"]
  @comp_move1 = moves1.sample
  if @comp_move1 == "rock"
    @outcome1 = "tied"
  elsif @comp_move1 == "scissors"
    @outcome1 = "won"
  else
    @outcome1  = "lost"
  end
  erb(:zebra)
end


get("/paper") do
  moves2 = ["rock", "paper", "scissors"]
  @comp_move2 = moves2.sample
  if @comp_move2 == "rock"
    @outcome2 = "won"
  elsif @comp_move2 == "scissors"
    @outcome2 = "lost"
  else
    @outcome2  = "tied"
  end
  erb(:giraffe)
end


get("/scissors") do

  moves3 = ["rock", "paper", "scissors"]
  @comp_move3 = moves3.sample

  if @comp_move3 == "rock"
    @outcome3 = "lost"
  elsif @comp_move3 == "scissors"
    @outcome3 = "tied"
  else
    @outcome3  = "won"
  end
  erb(:horse)
end
