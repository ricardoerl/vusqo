class AddNameToEntities < ActiveRecord::Migration[5.0]
  def change
    add_column :entities, :name, :string
  end
end
