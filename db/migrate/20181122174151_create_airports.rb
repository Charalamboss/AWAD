class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name
      t.references :country, foreign_key: true
      t.references :city, foreign_key: true
      t.string :wiki
      t.string :Isocode
      t.string :long
      t.string :latt

      t.timestamps
    end
  end
end
