require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
	test "Comprobar existencia de los atributos" do
	    producto = Product.new
	    assert_respond_to producto, "titulo"
	    assert_respond_to producto, "descripcion"
	    assert_respond_to producto, "imagen"
	    assert_respond_to producto, "precio"
  	end

	test "Producto valido sin inicializar" do
	    producto = Product.new
	    refute producto.valid?("Deberia ser invalido")
	    refute producto.errors[:titulo].blank?, "debe tener titulo"
	    refute producto.errors[:descripcion].blank?, "debe tener descripcion"
	    refute producto.errors[:imagen].blank?, "debe tener imagen"
	    refute producto.errors[:precio].blank?, "debe tener precio"
	    refute producto.valid?
  	end


  	test "Comprobacion titulo unico" do
	    producto = Product.first.dup
	    producto.descripcion = "descripcion2"
	    producto.imagen = "imagen_defecto2.png"
	    producto.precio = 10
	    refute producto.valid?, "No se puede guardar dos titulo iguales"

	end

end
