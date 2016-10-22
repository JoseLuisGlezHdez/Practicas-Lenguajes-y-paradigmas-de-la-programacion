require 'spec_helper'

describe Bibliografia do
	before :each do
	
	
	      @p2=Bibliografia::Bibliografia.new(
					 'Scott Chacon', 'Pro Git 2009th Edition', '(Pro). Apress', '2009',' (August 27, 2009)',['ISBN-13: 978-1430218333', 'ISBN-10: 1430218339'])

	      @node2 = Node.new(@p2,nil)
	      
	      
	      @p4=Bibliografia::Bibliografia.new(
					['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'], 'The RSpecBook', 'Behaviour Driven Development with RSpec', 'Cucumber, and Friends (The Facets of Ruby)','Pragmatic
Bookshelf', '1','(December 25, 2010)', ['ISBN-10: 1934356379.' ,'ISBN-13: 978-1934356371'])

	      @node4 = Node.new(@p4,nil)
	      
	      
	      @p5=Bibliografia::Bibliografia.new(
					 'Richard E', 'Silverman Git Pocket Guide', 'O’Reilly Media;', '1','(August 2, 2013)',['ISBN-10: 1449325866.','ISBN-13: 978-1449325862.'])

	      @node5 = Node.new(@p5,nil)

	
			
        end
end#fin del describe de bibliografia

describe Bibliografia::Libros do
	before :each do
	@p1=Bibliografia::Libros.new(["Dave Thomas", "Andy Hunt", "Chad Fowler2"],'Programming Ruby 1.9 & 2.0','The Pragmatic Programmers’Guide(The Facets of Ruby)','Pragmatic Bookshelf','4','(2013,7,7)',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'])

	      @node1 = Bibliografia::Node.new(@p1,nil)
	end
	
	 context "Pruebas para la clase Libros" do
	    it "Es de la clase Libro" do
               expect(@p1.class) == Bibliografia::Libros      
	    end

	    it "Debe tener un autor heredado de la clase Bibliografia" do
               expect(@p1.autores) == ["Dave Thomas", "Andy Hunt", "Chad Fowler2"]	       
	    end
	end
end#fin del describe de libros

describe Bibliografia::Periodicos do
	before :each do
		@p3=Bibliografia::Periodicos.new(
					 ["David Flanagan", "Yukihiro Matsumoto"],' The Ruby Programming Language.',' O’Reilly Media', '1', '(February 4, 2008)',['ISBN-10: 0596516177','ISBN-13: 978-0596516178'])    

	      	@node3 = Bibliografia::Node.new(@p3,nil)
	end

	context "Pruebas para la clase Periodicos" do
	    it "Es de la clase Periodico" do
               expect(@p3.class) ==  Bibliografia::Periodicos      
	    end

	    it "Debe tener un autor heredado de la clase Bibliografia" do
               expect(@p3.autores) == ["David Flanagan", "Yukihiro Matsumoto"]   
	    end

	end
end#fin del describe de periodicos

describe Bibliografia::Lista do	  
	  before :each do
	      
	      @lista=Bibliografia::Lista.new()
	      @lista.push(@node1)
	      @lista.push(@node2)
	      @lista.push(@node3)
	      @lista.push(@node4)
	      @lista.push(@node5)
	      
           end
  
	
 	   context "Pruebas para Node" do
	       it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
	         expect(@lista.cabeza != nil)
	       end
	    end
	   
	   context "Pruebas para Lista" do
	      
		it "Se deben insertar nodos en la lista" do
                    @lista.push(@node1)
                    expect(@lista.cabeza).to eq(@node1)
                end
                
                it "Se insertan varios elementos por el principio" do
                    @lista.push(@node1)
                    @lista.push(@node2)
                    expect(@lista.cabeza).to eq(@node2)
                end
		
		it "Se insertan varios elementos por el final" do
                    @lista.push_final(@node1)
                    @lista.push_final(@node2)
                    expect(@lista.cabeza).to eq(@node1)
                end

	        it "Se extrae el primer elemento de la lista" do
		    @lista.push(@node1)
                    @lista.push(@node2)
                    @lista.pop
                    expect(@lista.cabeza).to eq(@node1)	
	        end
		
		it "Se extrae el ultimo elemento de la lista" do
		    @lista.push_final(@node1)
                    @lista.push_final(@node2)
                    @lista.pop_final
                    expect(@lista.cabeza).to eq(@node1)	
	        end
		
		it "Se inserta por el final de la lista" do
		    @lista.push_final(@node1)
                    @lista.push_final(@node2)
                    expect(@lista.cabeza).to eq(@node1)	
	        end
	
	  end 
end#fin del describe de Lista