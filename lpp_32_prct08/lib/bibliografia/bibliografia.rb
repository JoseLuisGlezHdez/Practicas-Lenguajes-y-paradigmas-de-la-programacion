module Bibliografia

 Node = Struct.new(:value, :next,:anterior) #define una estructura indicando los campos que contendrá

    class Bibliografia
        attr_reader :autores, :titulo, :edicion, :numeroedicion, :serie, :fecha, :isbn

        def initialize(autores, titulo, serie, edicion, numeroedicion,fecha,isbn)
            @autores = autores
		raise ArgumentError, 'Specify :autores' unless @autores
            @titulo = titulo
		raise ArgumentError, 'Specify :titulo' unless @titulo
            @serie = serie
		raise ArgumentError, 'Specify :serie' unless @serie
            @edicion = edicion
		raise ArgumentError, 'Specify :edicion' unless @edicion
            @numeroedicion = numeroedicion
		raise ArgumentError, 'Specify :numeroedicion' unless @numeroedicion
            @fecha = fecha
		raise ArgumentError, 'Specify :fecha' unless @fecha
            @isbn = isbn
		raise ArgumentError, 'Specify :isbn' unless @isbn
        end

        def cantidadAutores()
            @autores.length()
        end

        def hasTitulo
            if @titulo then
                true
            else
                false
            end
        end

        def cantidadSeries
            if @serie!= nil then
                1
            else
                0
            end
        end

        def hasEdicion
            if @edicion then
                true
            else
                false
            end
        end

        def hasNumeroedicion
            if @numeroedicion then
                true
            else
                false
            end
        end

        def hasFecha
            if @fecha then
                true
            else
                false
            end
        end

        def cantidadIsbn
            @isbn.length
        end

        

    end#end de la clase bibliografia
######################################################################################################
class Lista
    
     attr_accessor :cabeza , :tail
     
    @cabeza = nil
    @tail = nil
    
     def push(nodo)
       if @cabeza == nil
	 @cabeza = nodo
	 @tail = nodo
       else #si cabeza apunta algun nodo
	nodo.next = @cabeza
	@cabeza.anterior = nodo
	@cabeza = nodo
	nodo.anterior = nil
	#@cabeza.anterior = nil
	#@cabeza.next = nodo.next
       end
    end
        
      def pop()
	  if (@cabeza != @tail)#si la lista tiene mas de un elemento
	    aux = @cabeza
	    @cabeza = @cabeza.next
	    @cabeza.anterior = nil
	    aux.next = nil
	    aux.value
	  else
	    @cabeza = nil
	    @tail = nil
	    
	  end
     end
     
     def push_final(nodo)
       if @tail == nil
	 @tail = nodo
	 @cabeza = nodo
       else
	  @tail.next = nodo
	  nodo.anterior = @tail
	  @tail = nodo
       end
     end
     
     def pop_final()
       if (@cabeza != @tail)#si la lista tiene mas de un elemento
	    aux = @tail
	    @tail = @tail.anterior
	    @tail.next = nil
	    aux.anterior = nil
	    aux.value
	  else
	    @cabeza = nil
	    @tail = nil
	  end
     end
    
end#end de la clase lista
######################################################################################################

 class Libros < Bibliografia
	def initialize(autores, titulo, serie, edicion, numeroedicion,fecha,isbn)
      		super(autores, titulo, serie, edicion, numeroedicion,fecha,isbn)
      
     
      
        end
 end#end de la clase Libros
###################################################################################################### 
 class Periodicos < Bibliografia
	def initialize(autores, titulo, serie, edicion, numeroedicion,fecha,isbn)
      
      		super(autores, titulo, serie, edicion, numeroedicion,fecha,isbn)
      
      
      
        end
    
 end#end de la clase Periodicos
end
