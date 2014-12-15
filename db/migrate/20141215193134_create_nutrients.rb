class CreateNutrients < ActiveRecord::Migration
  def change
    create_table :nutrients do |t|
      t.decimal :water
      t.decimal :energy_kcal
      t.decimal :protein
      t.decimal :lipid_total
      t.decimal :ash
      t.decimal :carbohydrate
      t.decimal :fiber
      t.decimal :sugar_total
      t.decimal :calcium
      t.decimal :iron
      t.decimal :magnesium
      t.decimal :phosphorous
      t.decimal :potassium
      t.decimal :sodium
      t.decimal :zinc
      t.decimal :copper
      t.decimal :manganese
      t.decimal :selenium
      t.decimal :vitamin_c

      t.timestamps
    end
  end
end
