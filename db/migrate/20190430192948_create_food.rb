class CreateFood < ActiveRecord::Migration[5.1]
  def up
    create_table :foods do |t|
       t.string   :name

       t.timestamps null: false
    end
  end

  def down
    drop_table :foods
  end
end
