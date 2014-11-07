class AddFieldsToVisit < ActiveRecord::Migration
  def change
  	add_column :visits, :location_id, :integer
  	add_column :visits, :user_id, :integer
  	add_column :visits, :from_date, :datetime
  	add_column :visits, :to_date, :datetime

  end
end
