class CreateOrganismeReferants < ActiveRecord::Migration[5.0]
  def change
    create_table :organisme_referants do |t|
      t.string :nom
      t.string :noCivique
      t.string :rue
      t.string :ville
      t.string :province
      t.string :etat
      t.string :codePostal
      t.string :telephoneBureau
      t.string :telephoneTelecopie
      t.string :courriel
      t.string :siteWeb

      t.timestamps
    end
  end
end
