class WelcomeController < ApplicationController
  def index
    @file = File.read("#{Rails.root}/README.md")

    # Q1
    # @q1s = Meal.find_by_sql("SELECT name FROM meals WHERE id NOT IN (SELECT DISTINCT meal_id FROM meal_foods)")
    @q1s = Meal.where.not(:id => MealFood.select(:meal_id)).select("name")

    # Q2
=begin
     @q2s = Food.find_by_sql("SELECT foods.name, COUNT(meal_foods.food_id) num FROM foods, meal_foods 
                              WHERE foods.id = meal_foods.food_id 
                              GROUP BY foods.name 
                              ORDER BY num DESC")
=end

    @q2s = Food.joins("INNER JOIN meal_foods ON foods.id = meal_foods.food_id ").select("foods.name, COUNT(meal_foods.food_id) num").group("foods.name").order("num DESC")

    # Q3
    @q3s = Array.new
    Food.find_each do |food|
      @tmp = Food.joins("INNER JOIN meal_foods ON foods.id = meal_foods.food_id ")
                  .select("name")
                  .where("meal_foods.meal_id" => MealFood.select(:meal_id).where(:food_id => food.id))
                  .where.not(:id => food.id)

      @q3s << {:head => food.name , :other => @tmp}
    end

  end
end
