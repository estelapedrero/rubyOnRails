class AddTlfToVisits < ActiveRecord::Migration
  def change
  	add_column :visits, :tlf, :integer
  end
end
