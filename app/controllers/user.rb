# GET================================


# POST ================================

post '/gamehome' do
  puts params
  #Sign Up Case
  if params["password_confirmation"]
    puts true
  else
    #Sign In Case
    puts false
  end
end
