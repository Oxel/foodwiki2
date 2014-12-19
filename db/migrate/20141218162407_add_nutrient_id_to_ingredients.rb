class AddNutrientIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :nutrient_id, :integer
  end
end
