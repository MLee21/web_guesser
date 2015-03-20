require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

get '/' do
  message = guess_checker(params["guess"])
  erb :index, :locals => {:number => NUMBER, :message => message}
end

def guess_checker(guess)
  case 
  when guess.to_i >= (NUMBER + 5)
    "Way too high!"
  when guess.to_i <= (NUMBER - 5)
    "Way too low!"
  when NUMBER < guess.to_i && guess.to_i < (NUMBER + 5)
    "Too high!"
  when NUMBER > guess.to_i && guess.to_i > (NUMBER - 5)
     "Too low!"
  when guess.to_i == NUMBER
    "You got it right!"
  end
end

