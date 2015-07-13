class AddCompanyIdToComponents < ActiveRecord::Migration
  def change
    add_column :components, :company_id, :integer
  end
end
