require 'sinatra'
require 'sinatra/reloader'

@truth_symbol = 'T'
@false_symbol = 'F'
@size = 3

# Do logical AND
def log_and(t, f, num_false)
  if num_false > 0
    f
  else
    t
  end
end

# Do logical OR
def log_or(t, f, num_true)
  if num_true > 0
    t
  else
    f
  end
end

# Do logical NAND
def nand(t, f, num_false)
  not log_and(t, f)
end

# Do logical NOR
def nor(t, f, num_true)
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
  erb :bad_page
end

# Main page
get '/' do
  @truth_symbol = 'T'
  @false_symbol = 'F'
  @size = 3
  erb :index
end

post '/' do
  puts "Truth: #{params['t']}, False: #{params['f']}, Size: #{params["size"]}"
  
  params['t'].nil? or params['t'].empty? ? @truth_symbol = 'T' : @truth_symbol = params['t']
  params['f'].nil? or params['f'].empty?  ? @false_symbol = 'F' : @false_symbol = params['f']
  params["size"].nil? or params["size"].empty? ? @size = 3 : @size = params["size"].to_i

  if @truth_symbol == @false_symbol or
        @truth_symbol.length != 1 or 
        @false_symbol.length != 1 or
        @size.to_i < 2
    puts "Error. Truth: #{@truth_symbol}, False: #{@false_symbol}, Size: #{@size}"
    erb :error
  else
    combos = Array.new
    0.upto((2**@size)-1).each { |n| combos << "%0#{@size}b" % n}

    puts "Truth symbol: #{@truth_symbol}, False symbol: #{@false_symbol}, Size: #{@size}"

    erb :table, :locals => {truth_symbol: @truth_symbol, false_symbol: @false_symbol, size: @size, combos: combos}
  end
end