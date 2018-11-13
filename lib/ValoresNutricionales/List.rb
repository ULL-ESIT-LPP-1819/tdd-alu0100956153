Node = Struct.new(:value, :next, :prev)

class List
	attr_reader :head, :tail
	def initialize
		@head = Node.new(5,nil,nil)
		@tail = Node.new(5,nil,nil)
	end

	def push_front(value)
		n= Node.new(value,@head,nil)
		@head= n
	end

end
