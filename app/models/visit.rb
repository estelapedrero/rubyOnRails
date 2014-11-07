class Visit < ActiveRecord::Base
	
	belongs_to :location
	belongs_to :user



	def different_dates 
		errors[:from_date] << 'NO puedes irte y volver al mismo tiempo!!' if from_date == to_date
	end

	def self.last_created(n)
		order(created_at: :desc).limit(n)
	end
end
