
#clase heredada de etiqueta que añade a lo anterior nombre y apellido
class Individuo < Etiqueta
	attr_reader :name, :surname
	#Inicializa una etiqueta y nombre y apellido
	def initialize(name,surname,gr, gr_st,gr_mi,gr_pi,h_d_c,az,pa,am,f_a,pr,nacl)
		super(gr, gr_st,gr_mi,gr_pi,h_d_c,az,pa,am,f_a,pr,nacl)

		@name=name
		@surname=surname
	end


end
