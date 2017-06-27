class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :directeur_role, :boolean , default: false
    add_column :users, :coordonateur_role, :boolean , default: false
    add_column :users, :adjoint_coordonateur_role, :boolean , default: true
    add_column :users, :intervenant_role, :boolean , default: false
  end
end
