class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :username, :string
  end
end
