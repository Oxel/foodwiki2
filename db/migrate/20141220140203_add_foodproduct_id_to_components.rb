class AddFoodproductIdToComponents < ActiveRecord::Migration
  def change
    add_column :components, :foodproduct_id, :integer
  end
end
