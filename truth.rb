require 'sinatra'
require 'sinatra/reloader'

@truth_symbol = 'T'
@false_symbol = 'F'
@size = 3

# Do logical AND
def and(t, f)

end

# Do logical OR
def or(t, f)

end

# Do logical NAND
def nand(t, f)
  not and(t, f)
end

# Do logical NOR
def nor(t, f)
  not or(t, f)
end

# Get Requests

# Template
# get '/path' do
# => what it does
# => erb :erbname
# end

# What to do if route cannot be found
not_found do
  status 404
  # erb :error
end

# Main page
get '/' do
  erb :index
end

# Post requests
