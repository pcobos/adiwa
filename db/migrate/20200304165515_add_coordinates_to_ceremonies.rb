class AddCoordinatesToCeremonies < ActiveRecord::Migration[5.2]
  def change
    add_column :ceremonies, :latitude, :float
    add_column :ceremonies, :longitude, :float
  end
end
