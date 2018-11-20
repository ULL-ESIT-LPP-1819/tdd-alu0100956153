Node = Struct.new(:value, :next, :prev)

class List
	attr_reader :head, :tail
	def initialize
		@head = nil
		@tail = nil
	end

	def push_front(value)
		n= Node.new(value,@head,nil)
		if(@head.nil?)
			@tail = n
		else
			@head.prev = n
		end
		@head = n

		
			
	end

	def push_back(value)
		n = Node.new(value,nil,@tail)
		if(@tail.nil?)
			@head = n
		else
			@tail.next = n
		end
		@tail = n
	end

	def pop_front
		if !@head.nil? && size > 1
			n=@head.value
			@head=@head.next
			@head.prev = nil
			return n
		elsif size==1
			n=@tail.value
			@tail=nil
			return n
		end
		return nil
	end
	
	def pop_back
		if !@tail.nil? && size > 1
			n=@tail.value
			@tail=@tail.prev
			@tail.next = nil
			return n
		elsif size ==1
			n=@tail.value
			@tail= nil
			return n
		end
		return nil
	end
	def size
		if !@head.nil? 

			n = @head
			size = 1
			while !n.next.nil? do
				size+=1
				n=n.next
			end
			return size
		end
		return 0
	end

	def sort
		if !@head.nil?
			n= @head
			array_valid = Array.new
			array_not_valid = Array.new
			array_res = Array.new(2)
			
			while !n.next.nil? do
				if n.value.sales < 6
					array_valid.push(n.value)
				else
					array_not_valid.push(n.value)
				end
				n=n.next
			end
			if n.value.sales < 6
				array_valid.push(n.value)
			else
				array_not_valid.push(n.value)
			end

			array_res[0] = array_valid
			array_res[1] = array_not_valid
			return array_res
		end
	end
	def sort_imc

		if !@head.nil?
			n= @head
			array_delgado = Array.new
			array_aceptable = Array.new
			array_sobrepeso = Array.new
			array_obesidad = Array.new
			array_res = Array.new(4)
			while !n.next.nil? do
				if n.value.datos.imc() <= 18.5
					array_delgado.push(n.value)
				elsif (n.value.datos.imc() >18.5 && n.value.datos.imc() <=24.9)
					array_aceptable.push(n.value)
				elsif (n.value.datos.imc() >25 && n.value.datos.imc() <=29.9)
				        array_sobrepeso.push(n.value)
				else
					array_obesidad.push(n.value)	
				end
				n=n.next
			end
			if n.value.datos.imc() <= 18.5
	                	array_delgado.push(n.value)
                        elsif (n.value.datos.imc() >18.5 && n.value.datos.imc() <=24.9)
                                array_aceptable.push(n.value)
                        elsif (n.value.datos.imc() >25 && n.value.datos.imc() <=29.9)
                                array_sobrepeso.push(n.value)
                        else
                                array_obesidad.push(n.value)
			end
	
			array_res[0] = array_delgado
			array_res[1] = array_aceptable
			array_res[2] = array_sobrepeso
			array_res[3] = array_obesidad
			return array_res
		end
	end
end
