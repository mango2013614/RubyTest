# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  meals = [{id: 1, name: 'Happy Meal A'}]
  meals << {id: 2, name: 'Drink B'}
  meals << {id: 3, name: 'Happy Meal C'}
  meals << {id: 4, name: 'Dessert D'}
  meals << {id: 5, name: 'Shakes E'}
  Meal.create(meals)

  foods = [{id: 1, name: 'Coke'}]
  foods << {id: 2, name: 'Burger'}
  foods << {id: 3, name: 'French Fries'}
  foods << {id: 4, name: 'Fried Chicken'}
  foods << {id: 5, name: 'Pancake'}
  foods << {id: 6, name: 'Apple Pie'}
  Food.create(foods)

  meal_foods = [{meal_id: 1, food_id: 1}]
  meal_foods << {meal_id: 1, food_id: 2}
  meal_foods << {meal_id: 1, food_id: 6}
  meal_foods << {meal_id: 3, food_id: 1}
  meal_foods << {meal_id: 3, food_id: 3}
  meal_foods << {meal_id: 3, food_id: 4}
  meal_foods << {meal_id: 4, food_id: 6}
  MealFood.create(meal_foods)
