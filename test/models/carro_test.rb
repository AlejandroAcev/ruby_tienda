require 'test_helper'

class CarroTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
	test "Comprobar existencia de los atributos" do
	    carro = Carro.new
	    assert_respond_to carro, "user_id"
	    assert_respond_to carro, "linea_id"
  	end

	test "Comprobar que tiene usuario" do
	  carro = Carro.new
	  refute carro.valid?, "Debe tener un usuario asociado"
      assert carro.errors[:user_id].blank?, "debe tener usuario"
      assert carro.errors[:linea_id].blank?, "debe tener linea"
	end

end
