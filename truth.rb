require 'sinatra'
require 'sinatra/reloader'

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