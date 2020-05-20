class AddDescriptionToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :description, :string
    add_column :locations, :image, :string
  end
end
