require_relative 'user'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/signin' do
  erb :signin
end 

get '/signup' do
  erb :signup
end

get '/new_game' do 
  @subjects = Deck.all
  
  erb :new_game
end

