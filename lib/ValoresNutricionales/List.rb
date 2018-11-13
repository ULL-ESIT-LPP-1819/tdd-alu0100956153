Node = Struct.new(:value, :next, :prev)

class List
	attr_reader :head
	def initialize
		@head = Node.new(5,nil,nil)
	end

end
