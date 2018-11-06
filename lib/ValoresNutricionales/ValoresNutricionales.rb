class Etiqueta
	attr_reader :grasa,:grasas_saturadas, :grasas_monoinsaturadas, :grasas_poliinsaturadas, :hidratos_de_carbono, :azucares, :polialcoholes, :almidones, :fibra_alimentaria, :proteinas, :sales
	def initialize(gr, gr_st,gr_mi,gr_pi,h_d_c,az,pa,am,f_a,pr,nacl)
		@grasa = gr
		@grasas_saturadas = gr_st
		@grasas_monoinsaturadas = gr_mi
		@grasas_poliinsaturadas = gr_pi
		
		@hidratos_de_carbono = h_d_c
		@azucares= az
		@polialcoholes = pa
		@almidones = am
		@fibra_alimentaria = f_a
		@proteinas = pr
		@sales = nacl
	end
	def valor_kj
		valor_grasa = 37*grasa
		valor_hidratos = (17*(hidratos_de_carbono - polialcoholes)) + (polialcoholes*10)
		valor_fibra = 8*fibra_alimentaria
		valor_proteinas = 17*proteinas
		valor_sal = 25*sales
		total= valor_grasa + valor_hidratos + valor_fibra + valor_proteinas + valor_sal
	end
end
