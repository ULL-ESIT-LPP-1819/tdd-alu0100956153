module Enumarable
	
	def sort_for
		result= self.dup
		for i in 0...result.size do
			for j in 0...result.size do
				if result[i] < result[j]
					result[i],result[j] = result[i],result[j]
				end
			end
		end
		return result
	end





end
