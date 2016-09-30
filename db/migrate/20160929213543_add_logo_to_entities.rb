class AddLogoToEntities < ActiveRecord::Migration[5.0]
  def change
    add_column :entities, :logo, :string
  end
end
