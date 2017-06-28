class CreateReferents < ActiveRecord::Migration[5.0]
  def change
    create_table :referents do |t|
      t.string :nom
      t.string :prenom
      t.string :titre
      t.string :tellCell
      t.string :tellBur
      t.string :fax
      t.string :courriel
      t.string :preference

      t.timestamps
    end
  end
end
