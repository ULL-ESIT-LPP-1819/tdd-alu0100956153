#Clase Etiqueta que guarda valores nutricionales y saca datos de ellos
class Etiqueta
	include Comparable
	attr_reader :grasa,:grasas_saturadas, :grasas_monoinsaturadas, :grasas_poliinsaturadas, :hidratos_de_carbono, :azucares, :polialcoholes, :almidones, :fibra_alimentaria, :proteinas, :sales
	#incializa valores de grasas(monosaturadas y poliinsaturadas), hidratos,azucares,polialcoholes,almidones,fibra,proteinas y sales
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


	#Calcula el valor energetico en kj
	def valor_kj
		valor_grasa = 37*grasa if !grasa.nil?
		valor_hidratos = (17*(hidratos_de_carbono - polialcoholes)) + (polialcoholes*10) if !hidratos_de_carbono.nil?
		valor_fibra = 8*fibra_alimentaria if !fibra_alimentaria.nil?
		valor_proteinas = 17*proteinas if !proteinas.nil?
		valor_sal = 25*sales if !sales.nil?
		total= valor_grasa + valor_hidratos + valor_fibra + valor_proteinas + valor_sal
	end
	
	#Calcula el valor energetico en kcal
	def valor_kcal
		resultado = (valor_kj* 0.2390055).round()
	end
	#Calcula porcentaje de kj en relacion a ingesta recomendada
	def porcentaje_kj
		resultado= ((valor_kj / 8400.0) * 100.0).round(2)
	end
	#Calcula porcentaje de grasa en relacion a ingesta recomendada
	def porcentaje_grasa
		resultado= ((grasa / 70.0)* 100.0).round(2)
	end
	#Calcula porcentaje de grasa saturada en relacion a ingesta recomendada
	def porcentaje_grasas_saturadas
		resultado =((grasas_saturadas / 20.0) * 100.0).round(2)
	end
	#Calcula porcentaje de hidratos en relacion a ingesta de hidratos recomendada
	def porcentaje_hidratos_de_carbono
		resultado = ((hidratos_de_carbono / 260.0) * 100.0).round(2)
	end
	#Calcula porcentaje de azucares en relacion a ingesta recomendada
	def porcentaje_azucares
		resultado = ((azucares / 90.0) * 100.0).round(2)
	end
	#Calcula porcentaje de proteinas en relacion a ingesta recomendada
	def porcentaje_proteinas
		resultado = ((proteinas / 50.0) * 100.0).round(2)
	end
	#Calcula porcentaje de sales en relacion a ingesta recomendada
	def porcentaje_sales
		resultado = ((sales / 6.0) * 100.0).round(2)
	end
	#Devuelve string con formateo de calculos
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
	
	def <=> (other)
		valor_kj <=> other.valor_kj
	
	end	
	def <=>(other)
		if other.is_a?(Etiqueta)
			valor_kj<=>other.valor_kj
		else
			valor_kj <=> other
		end
	end

end
