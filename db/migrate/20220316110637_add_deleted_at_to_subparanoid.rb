class AddDeletedAtToSubparanoid < ActiveRecord::Migration[7.0]
  def change
    add_column :subparanoids, :deleted_at, :datetime
    add_index :subparanoids, :deleted_at
  end
end
