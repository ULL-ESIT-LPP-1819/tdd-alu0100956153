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
		if !@head.nil?
			n=@head.value
			@head=@head.next
			@head.prev = nil
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

			array_res[0] = array_valid
			array_res[1] = array_not_valid
			return array_res
		end
	end

end
