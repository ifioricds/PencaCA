class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.integer :score_1
      t.integer :score_2
      t.string :phase
      t.string :group

      t.references :country_1
      t.references :country_2

      t.timestamps
    end
    add_foreign_key :matches, :countries, column: :country_1_id, primary_key: :id
    add_foreign_key :matches, :countries, column: :country_2_id, primary_key: :id
  end
end
