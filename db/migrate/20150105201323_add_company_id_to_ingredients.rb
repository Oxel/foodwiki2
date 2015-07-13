class AddCompanyIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :company_id, :integer
  end
end
