class Etiqueta
	attr_reader :grasa,:grasas_saturadas, :grasas_monoinsaturadas, :grasas_poliinsaturadas, :hidratos_de_carbono, :azucares, :polialcoholes, :almidones, :fibra_alimentaria
	def initialize(gr, gr_st,gr_mi,gr_pi,h_d_c,az,pa,am)
		@grasa = gr
		@grasas_saturadas = gr_st
		@grasas_monoinsaturadas = gr_mi
		@grasas_poliinsaturadas = gr_pi
		
		@hidratos_de_carbono = h_d_c
		@azucares= az
		@polialcoholes = pa
		@almidones = am
		@fibra_alimentaria = 10
	end
end
