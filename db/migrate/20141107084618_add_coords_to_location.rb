class AddCoordsToLocation < ActiveRecord::Migration
  def change
  	add_column :locations, :latitud, :string
  	add_column :locations, :longitud, :string
  end
end
