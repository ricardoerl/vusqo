class AddSlugToEntities < ActiveRecord::Migration[5.0]
  def change
    add_column :entities, :slug, :string
    add_index :entities, :slug, unique: true
  end
end
