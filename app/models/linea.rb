class Linea < ApplicationRecord
	belongs_to :carro
	has_one :product
end
