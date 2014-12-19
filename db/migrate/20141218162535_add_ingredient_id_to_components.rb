class AddIngredientIdToComponents < ActiveRecord::Migration
  def change
    add_column :components, :ingredient_id, :integer
  end
end
