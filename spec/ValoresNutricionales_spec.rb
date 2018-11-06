RSpec.describe ValoresNutricionales do
  
	before :each do
		@etiqueta = Etiqueta.new()
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
		it "Has and dispalys a variable grasas_monoinsaturadas" do
			expect(@etiqueta.grasas_monoinsaturadas).to equal(3)
		end
	end
   
  
end
