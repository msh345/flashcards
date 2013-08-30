require 'faker'
@deck1 = Deck.create(:subject => "hello")

10.times do 

  @deck1.cards << Card.create(:term => Faker::Name.name, :definition => Faker::Address.city)

end
