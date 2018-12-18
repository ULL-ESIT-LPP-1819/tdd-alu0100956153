class Menu
	include Comparable
	include Enumerable
	attr_accessor :comida
	
	def initialize

		@comida = []
	end

	def sum 
            sum = @comida.inject(0){|res,x| res + x.valor_kcal}
	end
	def <=>(other)
		self.sum <=> other.sum
	end
	
	def each
		yield @comida.each
	end

end
