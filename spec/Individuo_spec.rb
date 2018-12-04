RSpec.describe Individuo do
	before(:all) do
		@ind = Individuo.new("Foo","McFoo",10,4,3,3,15,5,5,5,10,10,10)
	end
        describe "#Individuo EXIST" do
                it "Creates a Individuo" do
			i = Individuo.new("Foo","McFoo",10,4,3,3,15,5,5,5,10,10,10)
			expect(i).to be_a(Individuo)
		end
		it "Has an attribute name" do
			expect(@ind.name).to eq("Foo")
		end	
	end
	describe "#has attributes from ValorNutricional" do
		it "Has a attribute Sales" do
			expect(@ind.sales).to eq(10)
	end
	end
end

RSpec.describe Paciente do
	before(:all) do
		ind = Individuo.new("Foo","McFoo",10,4,3,3,15,5,5,5,10,10,10)
		antropo = Valoracion.new(70,1.70,20,1,80,90)
		@pacient = Paciente.new(ind,antropo)
	end

	describe "#Paciente EXIST" do
		it "Creates a Paciente" do
			ind = Individuo.new("Foo","McFoo",10,4,3,3,15,5,5,5,10,10,10)
	                ant = Valoracion.new(70,1.70,20,1,80,90)
	                p = Paciente.new(ind,ant)
			expect(p).to be_a(Paciente)
		end
	end

	describe "#Paciente list get sorted on imc" do
		it "sorts the list" do
			i=0
			r = List.new()
			while i<5 do
			
				r.push_back(@pacient)
				puts @pacient.datos.imc()
				i= i+1
			
			end
			expect(r.size).to eq(5)
		end
	end

	describe "#hierarchy is fine" do
		it "has a invidiuo with superclass etiqueta" do
			expect(Individuo.superclass.name).to eq("Etiqueta")
	
		end
		it "Has a paciente with superclass Individuo " do
			expect(Paciente.superclass.name).to eq("Individuo")
		

		end
		it "Has a paciente with datos" do
			expect(@pacient.datos.instance_of? Valoracion).to eq(true)
		end
		#respond to falta

	end

	describe "#Compares fine" do
		it "less than fine" do
			antropo1 = Valoracion.new(70,1.70,20,1,80,90)
			expect(@pacient.datos.imc < antropo1.imc).to eq(false)
		end
		it "more than fine" do
			antropo1 = Valoracion.new(70,1.70,20,1,80,90)
			expect(@pacient.datos.imc > antropo1.imc).to eq(false)
		end
		it "equal fine" do
			antropo1 = Valoracion.new(70,1.70,20,1,80,90)
			expect(@pacient.datos.imc == antropo1.imc).to eq(true)
		end
	end
end


