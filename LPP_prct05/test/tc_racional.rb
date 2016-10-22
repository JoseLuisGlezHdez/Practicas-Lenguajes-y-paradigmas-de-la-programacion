require "/home/jose/LPP/LPP_prct05/lib/racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	
	#Test de prueba
	def test_probando
		assert_equal("2/3", Fraccion.new(2,3).to_s) 
		assert_equal("1", Fraccion.new(3,3).to_s)
	end

	#Test de las operaciones
	def test_operaciones
		#Con la Suma
		assert_equal("6", Fraccion.new(25,5).suma(3,3).to_s)
		assert_equal("8/3", Fraccion.new(2,3).suma(4,2).to_s) 
		#Con la Resta
		assert_equal("-4/3", Fraccion.new(2,3).resta(4,2).to_s)
		assert_equal("-3", Fraccion.new(-4,2).resta(2,2).to_s)
		#Con la Multiplicacion
		#Se comprueban todas las posibilidades
		assert_equal("4/15", Fraccion.new(2,3).mult(2,5).to_s)
		assert_equal("-2/5", Fraccion.new(1,1).mult(-2,5).to_s)
		assert_equal("1", Fraccion.new(5,5).mult(1,1).to_s)
		assert_equal("-1", Fraccion.new(-5,5).mult(1,1).to_s)
		assert_equal("-1", Fraccion.new(5,-5).mult(1,1).to_s)
		assert_equal("1", Fraccion.new(-5,-5).mult(1,1).to_s)
		assert_equal("1/2", Fraccion.new(5,5).mult(1,2).to_s)
		assert_equal("-1/2", Fraccion.new(-5,5).mult(1,2).to_s)
		assert_equal("-1/2", Fraccion.new(5,-5).mult(1,2).to_s)
		assert_equal("1/2", Fraccion.new(-5,-5).mult(1,2).to_s)
		assert_equal("0", Fraccion.new(0,5).mult(1,2).to_s)
		assert_equal("0", Fraccion.new(0,-5).mult(1,2).to_s)
		assert_equal("0", Fraccion.new(5,-5).mult(0,2).to_s)
		assert_equal("0", Fraccion.new(-5,-5).mult(0,2).to_s)
		#Con la Division
		assert_equal("5/3", Fraccion.new(2,3).div(2,5).to_s)
		assert_equal("-1", Fraccion.new(25,5).div(-10,2).to_s)
		assert_equal("-1", Fraccion.new(-25,5).div(10,2).to_s)
	end

	#Test para controlar el Error cuando el denominador=0
	def test_Error	
		assert_raise(ArgumentError){Fraccion.new(1,0)}
	end
end
