
# DECKS = ["Food", "Sports", "Cars"]

FOOD = {
"The rice dish ‘paella’ comes from what country?" => "Spain",
"Deer meat is known by what name?" => "Venison",
"True or false? India is the world’s largest producer of bananas." => "True", 
"What is the sweet substance made by bees?" => "Honey",
"What is another name for maize?" => "Corn",
"Fruit preserves made from citrus fruits, sugar and water are known as what?" => "Marmalade",
"True or false? ‘Beefsteak’ is a variety of tomato." => "True",
"True or false? Cooking food often transforms its chemical make up." => "True",
}


# DECKS.each do |deck|
#   d = Deck.create(name: deck)
#   d.cards << Card.new(question: "Question #{i}", answer: "Answer #{i}")
# end


food = Deck.create(name: "Food")
FOOD.each do |question, answer|
  food.cards << Card.new(question: question, answer: answer)
end

USERS = ["Deren", "Jason", "Anna"]

USERS.each do |user|
  User.create(user_name: user, password: "1234")
end

# Round.create(user_id: 1, deck_id: 1)

# Guess.create(round_id: 1, card_id: 1, user_answer: "Bananas")

