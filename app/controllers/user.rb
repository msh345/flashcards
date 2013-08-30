# GET================================


# POST ================================

post '/gamehome' do
  #Sign Up Case
  if params["password_confirmation"]
    if params["password_confirmation"] == params[:new_user]["password"]
      @user = User.create(params[:new_user])
      erb :new_game
      #sessions
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
