require 'test_helper'

class RelacionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Comprobar atributos inicializados" do
  	relacion = Relacion.new
  	refute relacion.valid?,"Deberia ser invalido"
  	refute relacion.errors[:product_id].blank?, "debe tener un producto"
  	refute relacion.errors[:category_id].blank?, "debe tener una categoria"
  end

  test "Comprobar la existencia de atributos" do
  	relacion = Relacion.new
  	assert_respond_to relacion, "category_id"
  	assert_respond_to relacion, "product_id"
  	assert relacion.errors[:product_id].blank?, "debe tener un producto"
  	assert relacion.errors[:category_id].blank?, "debe tener una categoria"
	#assert_respond_to user, "followed_users"
  end

  test "Comprobar que Relaciones solo acepta productos existentes" do
  	relacion = Relacion.new
  	relacion.category_id= -1
  	relacion.product_id = 1
  	assert relacion.invalid?, "La categoria no deberia existir"

  	relacion.category_id = 1
  	relacion.product_id = -1
  	assert relacion.invalid?, "El producto no deberia existir"
  end

  test "Comprobar que no existen pares repetidos" do
  	relacion = Relacion.new
  	relacion.product_id = 1
  	relacion.category_id = 2
  	assert_no_difference("Product.count") do
  		relacion.save
  	end
  end


end
