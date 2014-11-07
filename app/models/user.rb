class User < ActiveRecord::Base

	has_many :visits

	validates :name, presence: true
	validates :email, presence: true

	def self.showOrdenado(n)
		order(created_at: :asc).limit(n)
	end
end
