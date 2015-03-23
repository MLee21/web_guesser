require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

get '/' do
  @background = "white"
  message = guess_checker(params["guess"])
  erb :index, :locals => {:number => NUMBER, :message => message, :background => @background}
end

def guess_checker(guess)
  case 
  when guess.to_i >= (NUMBER + 5)
     @background = "red"
    "Way too high!"
  when guess.to_i <= (NUMBER - 5)
    @background = "red"
    "Way too low!"
  when NUMBER < guess.to_i && guess.to_i < (NUMBER + 5)
    @background = "indianred"
    "Too high!"
  when NUMBER > guess.to_i && guess.to_i > (NUMBER - 5)
     @background = "lightblue"
     "Too low!"
  when guess.to_i == NUMBER
    @background = "darkseagreen"
    "You got it right!"
  end
end

