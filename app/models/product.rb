class Product < ApplicationRecord

	validates :titulo, :descripcion, presence: true
	validates :descripcion, length: { minimum: 3}

	after_initialize {
		unless self.imagen.blank? 
			unless self.imagen.end_with?(".jpg", ".png")
			 	self.imagen = "imagen_defecto.png" if self.imagen.blank?
			 end 
		end
		
	}

end
