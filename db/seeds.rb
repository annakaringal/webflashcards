

DECKS = ["Animals", "Sports", "Cars"]
# deck1 = Deck.create(name:"animals")

DECKS.each do |deck|
  d = Deck.create(name: deck)
  3.times do |i|
    d.cards << Card.new(question: "Question #{i}", answer: "Answer #{i}")
  end
end

USERS = ["Deren", "Jason", "Anna"]

USERS.each do |user|
  User.create(user_name: user, password: "1234")
end

Round.create(user_id: 1, deck_id: 1)

Guess.create(round_id: 1, card_id: 1, user_answer: "Bananas")

