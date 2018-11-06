class Category < ApplicationRecord

	validates :titulo, :descripcion, presence: true
	validates :titulo, uniqueness: true
	validates :descripcion, length: { minimum: 10}

	has_many :relationships, foreign_key: "follower_id", dependent: :destroy

end
