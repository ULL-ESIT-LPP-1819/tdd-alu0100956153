

class Paciente < Individuo
	attr_reader :datos
	def initialize(ind,ant)
		super(ind.name,ind.surname, ind.grasa,ind.grasas_saturadas,ind.grasas_monoinsaturadas,ind.grasas_poliinsaturadas,ind.hidratos_de_carbono,ind.azucares,ind.polialcoholes,ind.almidones,ind.fibra_alimentaria,ind.proteinas,ind.sales)
		@datos=ant
	end


end


