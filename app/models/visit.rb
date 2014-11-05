class Visit < ActiveRecord::Base
	
	belongs_to :location

	validates :from_date, presence:true
	validates :to_date, presence:true
	validates :user_name, presence:true
	

	def self.last_created(n)
		order(created_at: :asc).limit(n)
	end
end
