class CreateSavedPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_places do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
