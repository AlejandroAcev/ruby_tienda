class Relacion < ApplicationRecord

	validates_uniqueness_of :category_id, :scope => :product_id
	belongs_to :categories, class_name: "Category"
	belongs_to :products, class_name: "Product"
	validates :category_id, :categories, presence: true
	validates :product_id, :products, presence: true


end
