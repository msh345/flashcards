# GET================================
  get '/user/:id/stats' do
    erb :userstats
  end
  get '/logout' do 
    session.clear
    redirect to '/'
  end

# POST ================================

post '/gamehome' do
  @subjects = Deck.all
  #Sign Up Case
  if params["password_confirmation"]
    if params["password_confirmation"] == params[:new_user]["password"]
      @user = User.create(params[:new_user])
      #sessions
      if @user != nil
        session[:user_id] = @user.id
      end
      erb :gamehome
    else
      #invalid signup
      @error = "Passwords Don't Match"
      erb :signup
    end
  else
    #Sign In Case
    @user = User.where(:username => params["username"], :password => params["password"]).first
    if !@user.nil?
      session[:user_id] = @user.id
      erb :gamehome
    else
      #invalid signin
      @error = "Invalid Username or Password"
      erb :signin
    end
  end
end
