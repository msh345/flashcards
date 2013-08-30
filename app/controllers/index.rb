get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/signin' do
  erb :signin
end 

get'/signup' do
  erb :signup
end
