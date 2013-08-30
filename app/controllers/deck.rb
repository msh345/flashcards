# GET ====================
get '/deck/:id' do
  @deck_clone = Deck.find(params[:id])
  @card = @deck_clone.cards.sample.id

  redirect "/deck/#{params[:id]}/card/#{@card}"
  
end

get '/deck/:id/card/:card_id' do
  @card = Deck.find(params[:id]).cards.find(params[:card_id])
  erb :game_start
end

post '/response' do
  puts params.inspect
end
