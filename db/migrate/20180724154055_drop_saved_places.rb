class DropSavedPlaces < ActiveRecord::Migration[5.1]
  def change
    drop_table :saved_places do |t|
      t.string :name, null: false
      t.references :user, null: false
      t.references :place, null: false
    end
  end  
end
