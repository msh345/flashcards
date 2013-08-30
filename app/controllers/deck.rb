# GET ====================
get '/deck/:id' do
  deck_clone = Deck.find(params[:id])
  puts deck_clone.cards.inspect
  @cards
  erb :game_start 
end
