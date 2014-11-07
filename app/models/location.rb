class Location < ActiveRecord::Base

	has_many :visits

	validates :name, presence: true
	validates :name, length:{maximum:30}
	validates :latitud, presence: true
	validates :longitud, presence: true
	
	def self.last_created(n)
		order(created_at: :desc).limit(n)
	end

	def to_param
		name
	end

end
