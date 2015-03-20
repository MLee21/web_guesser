require 'sinatra'
require 'sinatra/reloader'

# get '/' do
#   "Hello, World!"
# end

get '/' do
  x = rand(0..100)
  y = "The secret number is #{x}."
  y.upcase
end