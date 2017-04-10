class CreateClinics < ActiveRecord::Migration[5.0]
  def change
    create_table :clinics do |t|
      t.string :title
      t.text :description
      t.datetime :offered_at

      t.timestamps
    end
  end
end
