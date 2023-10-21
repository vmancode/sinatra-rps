require "sinatra"
require "sinatra/reloader"

get("/") do
  
erb(:homepage)


  
end


get("/rock") do

  #myplay = ["rock", "paper", "scissor"]
  #compplay = ["rock", "paper", "scissor"]

  #myplay1 = myplay.sample
  #compplay1 = compplay.sample

  #if myplay1 == compplay1
  #  outcome = "tied"
  #elsif myplay1 == "rock" && compplay1 == "paper"
  #  outcome = "lost"
  #elsif myplay1 == "paper" && compplay1 == "scissor"
  #  outcome = "lost"
  #elsif myplay1 == "scissor" && compplay1 == "rock"
  #  outcome = "lost"  
  #else
  #  outcome = "won"
  #end


  moves = ["rock", "paper", "scissor"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "scissor"
    @outcome = "won"
  else
    @outcome  = "lost"
  end


  erb(:zebra)
end


get("/paper") do

  moves = ["rock", "paper", "scissor"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "scissor"
    @outcome = "lost"
  else
    @outcome  = "tied"
  end
  erb(:giraffe)
end


get("/scissor") do

  moves = ["rock", "paper", "scissor"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "scissor"
    @outcome = "tied"
  else
    @outcome  = "won"
  end
  erb(:scissor)
end
