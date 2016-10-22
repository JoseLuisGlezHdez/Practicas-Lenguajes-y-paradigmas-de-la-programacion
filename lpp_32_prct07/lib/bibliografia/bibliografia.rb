module Bibliografia

 Node = Struct.new(:value, :next) #define una estructura indicando los campos que contendrá

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

class Lista
    
     attr_accessor :cabeza
     
     def push(nodo)
       if @cabeza == nil
	 @cabeza = nodo
       else #si cabeza apunta algun nodo
	 nodo.next = @cabeza
	 @cabeza = nodo
       end
     end
     
     def pop()
       cabeza2 = @cabeza
       @cabeza = @cabeza.next
       cabeza2.value
     end
     
     
    
     
   end #end de la clase lista
end
