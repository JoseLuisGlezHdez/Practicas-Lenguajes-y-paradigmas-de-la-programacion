require "/home/jose/LPP/LPP_prct05/lib/gcd.rb"

class Fraccion
	attr_reader :a, :b
	
	#Constructor
	def initialize(a, b)
		mcd = gcd(a, b) 	
    @a = a/mcd
	    if b != 0
	      @b = b/mcd
	    else
	      raise ArgumentError , 'ERROR: El denominador no puede ser 0.'
	    end
	end

	#Funcion para imprimir un numero racional
	def to_s
		if @b == 1 #Si el denominador es 1, solo se imprimer el numerador
			"#{@a}"
		elsif @b == -1 #En el caso de que b=-1 y a>0 ó a=-1
			if @a>0 || @a==-1
				"#{-@a}"
			else #Si b=-1 y a es menor que cero, imprime el valor de a
				"#{@a}"
			end
		elsif (@a>0 && @b>0 && @b!=1) #Caso nomal, a y b son mayores que cero, imprime a/b
			"#{@a}/#{@b}"
		elsif (@a>0 && @b<0 && @b!=-1) # b es menor que cero, se le cambia el signo a todo para que se imprima: -a/b
			"#{-@a}/#{-@b}"
		elsif (@a<0 && @b<0 && @b!=-1) # a y b son menor que cero, se le cambia el signo a todo para que imprima a/b
			"#{-@a}/#{-@b}"
		elsif (@a<0 && @b>0 && @b!=1) # a es menor que cero, se imprime igual: -a/b
			"#{@a}/#{@b}"
		end	
	end

	#Funcion para Sumar.
	def suma(c, d) 
		result = Fraccion.new(@a*d + @b*c, @b*d)	
	end

	#Funcion para Resta.
	def resta(c, d) 
		result = Fraccion.new(@a*d - @b*c, @b*d)	
	end

	#Funcion para Multiplicar
	def mult(c, d)
		result = Fraccion.new(@a*c, @b*d)	
	end

	#Funcion para Dividir
	def div(c, d)
		result = Fraccion.new(@a*d , @b*c)
	end

end

