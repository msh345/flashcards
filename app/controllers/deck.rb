# GET ====================
get '/deck/:id' do
  deck_clone = Deck.find(params[:id])
   @card = deck_clone.cards.sample

   #erb :game_start

   # @cards.each do |c|
   #  c
   #  end
    erb :game_start

  # @cards.each do |card|
  #   erb :game_start
  # end
  
end

post '/response' do
  puts params.inspect
end
