#Clase valoracion  que guardará como valores de instancia
#todos los parametros necesarios y hará calculos en función de lo que se
#le pida
class Valoracion
	include Comparable
	attr_reader :peso, :talla, :edad, :sexo, :cintura, :cadera, :factor
	#Inicializa peso, talla,edad,sexo,cintura y cadera
	def initialize(peso,talla,edad,sexo,cintura,cadera,factor=0.0)
		@peso,@talla=peso,talla
		@edad,@sexo=edad,sexo
		@cintura,@cadera=cintura,cadera
		@factor = factor
		
	end
	#devuelve formateo de variables
	def to_s()
		s="mujer"
		if sexo ==1
			s="hombre"
		end
		["Peso: #{peso} kg \t Talla: #{talla} m","edad: #{edad} años \t sexo: #{s}","cintura: #{cintura} cm \t cadera: #{cadera} cm  "].join("\n") + "\n"
	end
	#Calcula imc
	def imc()
		peso/(talla*talla)
	end
	#Calcula porcentaje de grasa
	def porcentaje_grasa()
		(1.2 * imc + 0.23 * edad - 10.8 * sexo - 5.4).round(2)
	end
	#Calcula el rcc
	def rcc
		(cintura.to_f/cadera).round(2)
	end
	#calcula pliegues en funcion de medidas que se le pasan
	def pliegues(medidas)
		sum=0
		medidas.inject(0){|sum,x| sum + x }
		sum/medidas.length
	end
	#Calcula valoracion
	
	def peso_teorico_inicial
		return (talla-150)*0.75+50
	end

	def gasto_energetico_basal
		if sexo
			return (10*peso)+(6.25*talla)-(5*edad)+5
		else
			return (10*peso)+(6.25*talla)-(5*edad)-161
		end
	end
	def efecto_termogeno
		gasto_energetico_basal*0.10
	end
	
	def gasto_actividad_fisica
		gasto_energetico_basal * factor
	end

	def gasto_energetico_total
		gasto_energetico_basal+efecto_termogeno + gasto_actividad_fisica
	end


	def valoracion
		resultado_imc=""
		case imc
		when 0..18.4
			resultado_imc="Delgado"
		when 18.5..24.9
			resultado_imc="Aceptable"
		when 25..39.9
			resultado_imc="Sobrepeso"
		else 
			if imc >40
				resultado_imc="Obesidad"
			end
		end
		resultado_rcc=""
		case sexo
		when 0
			case rcc
			when 0.72..0.75
				resultado_rcc="bajo"
			when 0.76..0.82
				resultado_rcc="moderado"
			else
				if rcc> 0.82
					resultado_imc="alto"
				end
			end
		when 1
			case rcc
			when 0.83..0.88
				resultado_rcc="bajo"
			when 0.89..0.95
				resultado_rcc="moderado"
			when 0.96..1.01
				resultado_rcc="alto"
			else
				if rcc>1.01
					resultado_imc="Muy alto"
				end
			end
		end
		
		"IMC: #{imc} (riesgo: #{resultado_imc}) \n Porcentaje de grasa: #{porcentaje_grasa}% \n RCC: #{rcc} (riesgo: #{resultado_imc}) \n" 
	end
	
	def <=>(other)
		imc <=> other.imc
	end

			
		


end
