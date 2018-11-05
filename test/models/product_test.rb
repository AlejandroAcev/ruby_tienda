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
	    assert producto.invalid?("Deberia ser invalido")
	    refute producto.errors[:titulo].blank?, "debe tener titulo"
	    refute producto.errors[:descripcion].blank?, "debe tener descripcion"
	    refute producto.errors[:imagen].blank?, "debe tener imagen"
	    refute producto.errors[:precio].blank?, "debe tener precio"
  	end

  	test "Comprobar valores por defecto" do
	    producto = Product.new
    	assert_equal producto.imagen
  	end

  	test "Comprobacion titulo unico" do
	    producto = Product.first.dup
	    producto.descripcion = "descripcion2"
	    producto.imagen = "imagen_defecto2.png"
	    producto.precio = 10
	    assert producto.save, "No se pueden guardar dos productos con el mismo titulo"
	end

end
