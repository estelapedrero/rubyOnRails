class Location < ActiveRecord::Base

	has_many :visits

	validates :name, presence: true
	validates :name, length:{maximum:30}
	validates :latitud, presence: true
	validates :longitud, presence: true
	
	def self.last_created(n)
		order(created_at: :asc).limit(n)
	end

end
