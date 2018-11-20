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
			expect(p).to be_a(Pacient)
		end
	end
end


