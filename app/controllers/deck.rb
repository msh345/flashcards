# GET ====================
get '/deck/:id' do 
  #The purpose of this GET is to create a Round 
  #using User ID and Deck ID

  round = Round.create(:user_id => session[:user_id], :deck_id => params[:id])
  redirect "/round/#{round.id}/new_card"
end

get '/round/:round_id/new_card' do
  #This method pulls a card at random from the round's deck
  @card = Round.find(params[:round_id]).deck.cards.sample.id.to_s
  # Logic to verify card is ok

  redirect "/round/#{params[:round_id]}/card/#{@card}" 

end

get '/round/:round_id/card/:card_id' do
  @round = Round.find(params[:round_id])
  @card = Round.find(params[:round_id]).deck.cards.find(params[:card_id])
  erb :game_start
end

post '/round/:round_id/card/:card_id' do
  puts params
  #Verify Correct/Incorrent => Create Guess Table Entry
  answer = params["answer"].downcase
  round_id = params["round_id"]
  card_id = params["card_id"]
  card_answer = Card.find(card_id).term.downcase

  Guess.create(:round_id => round_id, :card_id => card_id, :outcome => answer == card_answer)

  #Get another card
  redirect "/round/#{round.id}/new_card"  
end
