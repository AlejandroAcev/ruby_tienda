class Carro < ApplicationRecord
	belongs_to :user
	has_many :lineas, foreign_key: "follower_id"


	def total
		total = 0
		lineas.find_each do |item|
			total += item.precio
		end
	end

end
