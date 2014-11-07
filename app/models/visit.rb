class Visit < ActiveRecord::Base
	
	belongs_to :location
	belongs_to :user

	validates :from_date, presence:true
	validates :to_date, presence:true
	validates :user_name, presence:true
	validate :differentDates

	def differentDates 
		errors[:from_date] << 'NO puedes irte y volver al mismo tiempo!!' if from_date == to_date
	end

	def self.last_created(n)
		order(created_at: :asc).limit(n)
	end
end
