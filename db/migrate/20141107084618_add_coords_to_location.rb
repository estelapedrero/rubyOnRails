class AddCoordsToLocation < ActiveRecord::Migration
  def change
  	add_column :locations, :altitud, :string
  	add_column :locations, :longitud, :string
  end
end
