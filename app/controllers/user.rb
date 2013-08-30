# GET================================


# POST ================================

post '/gamehome' do
  puts params
  #Sign Up Case
  if params["password_confirmation"]
    puts true
    if params["password_confirmation"] == params["password"]
      #Create User
    else
      #invalid signup
      @error = "Passwords Don't Match"
      erb :signup
    end
  else
    #Sign In Case
    puts false
  end
end
