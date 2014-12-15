class CreateFoodproducts < ActiveRecord::Migration
  def change
    create_table :foodproducts do |t|
      t.string :food_name

      t.timestamps
    end
  end
end
