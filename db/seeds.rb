User.create(user_name: "hello", user_email: "hello@gmail.com", password: "123")
User.create(user_name: "hello1", user_email: "hello1@gmail.com", password: "123")

Ingredient.create(name: "Tapioca")
Ingredient.create(name: "Coconut Jelly")
Ingredient.create(name: "Red Bean")
Ingredient.create(name: "Pop Jelly")
Ingredient.create(name: "Brown Sugar Tapioca")
Ingredient.create(name: "Aloe")

b1=BubbleTea.create(name: "greenbobo", user_id: 1, flavor: "green")
b2=BubbleTea.create(name: "green", user_id: 2, flavor: "green")

b1.ingredient_ids = [1,4]
b2.ingredient_ids = [2,3]
