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

get '/home' do
  @subjects = Deck.all
  erb :gamehome
end

get '/logout' do
  sessions[:user_id].destroy
  redirect '/'
end
