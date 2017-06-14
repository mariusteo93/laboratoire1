class CreateOrganismes < ActiveRecord::Migration[5.0]
  def change
    create_table :organismes do |t|
      t.string :Nom
      t.string :Adresse
      t.string :Courriel
      t.string :Telephone
      t.string :Fax

      t.timestamps
    end
  end
end
