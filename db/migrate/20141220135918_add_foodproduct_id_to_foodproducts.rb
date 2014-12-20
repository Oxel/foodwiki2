class AddFoodproductIdToFoodproducts < ActiveRecord::Migration
  def change
    add_column :foodproducts, :foodproduct_id, :integer
  end
end
