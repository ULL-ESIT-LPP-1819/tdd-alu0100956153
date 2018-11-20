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
	def valor_kcal
		resultado = (valor_kj* 0.2390055).round()
	end
	def porcentaje_kj
		resultado= ((valor_kj / 8400.0) * 100.0).round(2)
	end
	def porcentaje_grasa
		resultado= ((grasa / 70.0)* 100.0).round(2)
	end
	def porcentaje_grasas_saturadas
		resultado =((grasas_saturadas / 20.0) * 100.0).round(2)
	end
	def porcentaje_hidratos_de_carbono
		resultado = ((hidratos_de_carbono / 260.0) * 100.0).round(2)
	end
	def porcentaje_azucares
		resultado = ((azucares / 90.0) * 100.0).round(2)
	end
	def porcentaje_proteinas
		resultado = ((proteinas / 50.0) * 100.0).round(2)
	end
	def porcentaje_sales
		resultado = ((sales / 6.0) * 100.0).round(2)
	end

	def to_s
		s_kcal = "Valor energético: " + valor_kj.to_s + " Kj / " + valor_kcal.to_s + "Kcal (" + porcentaje_kj.to_s + '%' + ")\n"
		s_grasas = "Grasas: " + grasa.to_s + "g (" + porcentaje_grasa.to_s + '% )' + "\n"
		s_saturadas = "Saturadas " + grasas_saturadas.to_s + "g (" + porcentaje_grasas_saturadas.to_s + '% )' + "\n"
		s_monoinsaturadas = "Monoinsaturadas: " + grasas_monoinsaturadas.to_s + "g" + "\n"
		s_poliinsaturadas = "Poliinsaturadas: " + grasas_poliinsaturadas.to_s + "g" + "\n"
		s_hidratos = "Hidratos de carbono: " + hidratos_de_carbono.to_s + "g (" + porcentaje_hidratos_de_carbono.to_s + '% )' + "\n"
		s_azucares = "Azucares: " + azucares.to_s + "g (" + porcentaje_azucares.to_s + '% )' + "\n"
		s_polialcoholes = "Polialcoholes: " + polialcoholes.to_s + "g" + "\n"
		s_almidones = "Almidon: " + almidones.to_s + "g" + "\n"
		s_fibra = "Fibra alimentaria: " + fibra_alimentaria.to_s + "g" + "\n"
		s_proteinas = "Proteinas: " + proteinas.to_s + "g ( " + porcentaje_proteinas.to_s + '% ) ' + "\n"
		s_sales = "Sal: "+  sales.to_s + "g ( " + porcentaje_sales.to_s + '% )' + "\n"
		resultado= "\n" +  s_kcal + s_grasas + s_saturadas + s_monoinsaturadas + s_poliinsaturadas + s_hidratos + s_azucares + s_polialcoholes + s_almidones + s_fibra + s_proteinas + s_sales + "\n"


	end
		
end
