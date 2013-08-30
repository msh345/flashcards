# GET ====================
get '/deck/:id' do
  deck_clone = Deck.find(params[:id])
   @cards = deck_clone.cards
   @cards.each do |c|
    @c = c
    puts c.term
    erb :game_start
  end
  # @cards.each do |card|
  #   erb :game_start
  # end
  
end
