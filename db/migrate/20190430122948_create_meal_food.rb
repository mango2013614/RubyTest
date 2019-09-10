class CreateMealFood < ActiveRecord::Migration[5.1]
  def up
    create_table :meal_foods, id: false do |t|
       t.integer   :meal_id
       t.integer   :food_id
    end
  end

  def down
    drop_table :meal_foods
  end
end
