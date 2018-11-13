Node = Struct.new(:value, :next, :prev)

class List
	attr_reader :head, :tail
	def initialize
		@head = nil
		@tail = nil
	end

	def push_front(value)
		n= Node.new(value,@head,nil)
		if(@head == nil)
			@tail = n
		else
			@head.prev = n
		end
		@head = n

		
			
	end

	def push_back(value)
		n = Node.new(value,nil,@tail)
		if(@tail == nil)
			@head = n
		else
			@tail.next = n
		end
		@tail = n
	end

end
