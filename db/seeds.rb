
# DECKS = ["Food", "Sports", "Cars"]

FOOD = {
"The rice dish ‘paella’ comes from what country?" => "Spain",
"Deer meat is known by what name?" => "Venison",
"Are humans omnivore, herbivore or carnivore?" => "Omnivore",
"What food is used as the base of guacamole?" => "Avocado",
"The range of vegetables, fruits, meats, nuts, grains, herbs and spices used in cooking are known as what?" => "Ingredients",
"True or false? India is the world’s largest producer of bananas." => "True", 
"What is the sweet substance made by bees?" => "Honey",
'Lures, reels, rods, hooks, baits and nets are common equipment used in what food gathering method?' => "Fishing",
"True or false? McDonald’s has restaurants in over 100 countries around the world." => "True",
"The ‘Pizza Hut’ franchise began in what country?" => "USA",
"Foods rich in starch such as pasta and bread are often known by what word starting with the letter C?" => "Carbohydrates",
"True or false? Trans fats are good for your health." => "False",
"What is another name for maize?" => "Corn",
"Fruit preserves made from citrus fruits, sugar and water are known as what?" => "Marmalade",
"True or false? ‘Beefsteak’ is a variety of tomato." => "True",
"Dairy products are generally made from what common liquid?" => "Milk",
"Do coconut trees grow better in cold or warm climates?" => "Warm",
"True or false? Cooking food often transforms its chemical make up." => "True",
"What is the popular food used to carve jack-o-lanterns during Halloween?" => "Pumpkin",
"Chiffon, marble and bundt are types of what?" => "Cake"
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

