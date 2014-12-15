class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :component_name

      t.timestamps
    end
  end
end
