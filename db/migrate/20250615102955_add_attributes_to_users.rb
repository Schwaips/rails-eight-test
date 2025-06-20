class AddAttributesToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :admin, :boolean, default: false, null: false
  end
end
