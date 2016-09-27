class AddCompletedToEntity < ActiveRecord::Migration[5.0]
  def change
    add_column :entities, :completed, :boolean, default: false
  end
end
