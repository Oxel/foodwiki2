class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :author
      t.datetime :publication_date
      t.string :title
      t.string :place
      t.string :publisher

      t.timestamps
    end
  end
end
