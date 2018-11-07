class Category < ApplicationRecord

	validates :titulo, :descripcion, presence: true
	validates :titulo, uniqueness: true
	validates :descripcion, length: { minimum: 10}

	belongs_to :products
	has_many :reverse_relationships, foreign_key: "product_id", class_name: "Relacions"
	has_many :categories, through: :reverse_relationships, source: :category
end
