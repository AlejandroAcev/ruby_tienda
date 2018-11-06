class Category < ApplicationRecord

	validates :titulo, :descripcion, presence: true
	validates :titulo, uniqueness: true
	validates :descripcion, length: { minimum: 10}

	belongs_to :product

end
