class Product < ApplicationRecord

	validates :titulo, :descripcion, :imagen, :precio, presence: true
	validates :descripcion, length: { minimum: 3}
	validates :titulo, uniqueness: true
	
	belongs_to :category

end
