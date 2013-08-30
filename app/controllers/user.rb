# GET================================


# POST ================================

post '/gamehome' do
  puts params
  #Sign Up Case
  if params["password_confirmation"]
    puts true
    if params["password_confirmation"] == params["new_user[password]"]
      puts User.create(params[:new_user])
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
