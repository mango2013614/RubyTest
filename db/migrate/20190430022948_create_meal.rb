class CreateMeal < ActiveRecord::Migration[5.1]
  def up
    create_table :meals do |t|
       t.string   :name

       t.timestamps null: false
    end
  end

  def down
    drop_table :meals
  end
end
