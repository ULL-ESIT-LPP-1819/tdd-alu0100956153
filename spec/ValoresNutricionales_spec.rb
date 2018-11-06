RSpec.describe ValoresNutricionales do
  
	before :each do
		@etiqueta = Etiqueta.new(10,4,3,3)
	end

	describe "#exist" do
		it "instantiate correctly" do
			expect(@etiqueta).to be_an_instance_of(Etiqueta)
		end
	end
	describe "#Variables exist" do
		it "has and displays a variable grasas" do
			expect(@etiqueta.grasa).to equal(10)
		end
		it "Has and displays a variable grasas_saturadas" do
			expect(@etiqueta.grasas_saturadas).to equal(4)
		end
		it "Has and displays a variable grasas_monoinsaturadas" do
			expect(@etiqueta.grasas_monoinsaturadas).to equal(3)
		end
		it "Has and displays a variable grasas_poliinsaturadas" do
			expect(@etiqueta.grasas_poliinsaturadas).to equal(3)
		end
		it "Has and displays a variable Hidratos de carbono" do
			expect(@etiqueta.hidratos_de_carbono).to equal(15)
		end
	end
   
  
end
