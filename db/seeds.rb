
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

BEES = {
  "How many eyes does a bee have?" => "5",
  "True or False, Bees can calculate the angles of the Earth." => "True",
  "How many miles per hour can a honey bee fly?" => "5",
  "How many pairs of wings do bees have?" => "2",
  "What is the scientific name for honey bees?" => "Apis Mellifera",
  "How far do bees travel from their hives?" => "3 miles",
 }

food = Deck.create(name: "Food")
FOOD.each do |question, answer|
  food.cards << Card.new(question: question, answer: answer)
end

bees = Deck.create(name: "Bees")
BEES.each do |question, answer|
  bees.cards << Card.new(question: question, answer: answer)
end

USERS = ["Deren", "Jason", "Anna"]

USERS.each do |user|
  User.create(user_name: user, password: "1234")
end
