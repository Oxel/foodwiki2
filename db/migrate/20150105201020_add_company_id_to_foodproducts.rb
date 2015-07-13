class AddCompanyIdToFoodproducts < ActiveRecord::Migration
  def change
    add_column :foodproducts, :company_id, :integer
  end
end
