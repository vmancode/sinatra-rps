require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  <h1><a href="/">Home</a></h1>
  <h1><a href="/rock">Refresh</a></h1>

  "
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
