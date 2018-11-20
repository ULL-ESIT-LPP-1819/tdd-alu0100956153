require "ValoresNutricionales.rb"

class Individuo < Etiqueta
	attr_reader :name, :surname
	def initialize(name,surname,gr, gr_st,gr_mi,gr_pi,h_d_c,az,pa,am,f_a,pr,nacl)
		super(gr, gr_st,gr_mi,gr_pi,h_d_c,az,pa,am,f_a,pr,nacl)

		@name=name
		@surname=surname
	end


end
