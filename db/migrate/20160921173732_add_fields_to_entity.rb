class AddFieldsToEntity < ActiveRecord::Migration[5.0]
  def change
    add_column :entities, :website, :string
    add_column :entities, :phone, :string
    add_column :entities, :contact_email, :string
    add_column :entities, :facebook, :string
    add_column :entities, :twitter, :string
    add_column :entities, :instagram, :string
    add_column :entities, :medium, :string
    add_column :entities, :linkedin, :string
    add_column :entities, :behance, :string
    add_column :entities, :github, :string
    add_column :entities, :pinterest, :string
    add_column :entities, :youtube, :string
    add_column :entities, :gplus, :string
  end
end
