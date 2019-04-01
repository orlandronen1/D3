require 'sinatra'
require 'sinatra/reloader'

@truth_symbol = 'T'
@false_symbol = 'F'
@size = 3

# Do logical AND
def log_and(t, f)
  false
end

# Do logical OR
def log_or(t, f)
  false
end

# Do logical NAND
def nand(t, f)
  not log_and(t, f)
end

# Do logical NOR
def nor(t, f)
  not log_or(t, f)
end


# Template
# get '/path' do
# => what it does
# => erb :erbname
# end

# What to do if route cannot be found
not_found do
  status 404
  erb :error
end

# Main page
get '/' do
  erb :index
end

post '/' do
  puts "Truth: #{params["truth_symbol"]}, False: #{params["false_symbol"]}, Size: #{params["size"]}"
  
  if params["truth_symbol"] == params["false_symbol"] or
        params["truth_symbol"].length != 1 or 
        params["false_symbol"].length != 1 or
        params["size"].to_i < 2
    erb :error
  else
    erb :table
  end
end