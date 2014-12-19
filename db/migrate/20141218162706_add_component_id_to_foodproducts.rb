class AddComponentIdToFoodproducts < ActiveRecord::Migration
  def change
    add_column :foodproducts, :component_id, :integer
  end
end
