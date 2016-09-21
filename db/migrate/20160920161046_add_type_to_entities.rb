class AddTypeToEntities < ActiveRecord::Migration[5.0]
  def change
    add_column :entities, :type, :string
  end
end
