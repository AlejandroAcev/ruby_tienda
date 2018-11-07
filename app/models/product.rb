class Product < ApplicationRecord

	validates :titulo, :descripcion, :imagen, :precio, presence: true
	validates :descripcion, length: { minimum: 3}
	validates :titulo, uniqueness: true
	
	has_many :categories, foreign_key: "category_id"

end
