class CreateSubparanoids < ActiveRecord::Migration[7.0]
  def change
    create_table :subparanoids do |t|
      t.string :name
      t.references :paranoiac, null: false, foreign_key: true

      t.timestamps
    end
  end
end
