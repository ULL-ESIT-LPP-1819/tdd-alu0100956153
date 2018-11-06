class Etiqueta
	attr_reader :grasa,:grasas_saturadas, :grasas_monoinsaturadas, :grasas_poliinsaturadas, :hidratos_de_carbono, :azucares
	def initialize(gr, gr_st,gr_mi,gr_pi)
		@grasa = gr
		@grasas_saturadas = gr_st
		@grasas_monoinsaturadas = gr_mi
		@grasas_poliinsaturadas = gr_pi
		
		@hidratos_de_carbono = 15
		@azucares= 5
	end
end
