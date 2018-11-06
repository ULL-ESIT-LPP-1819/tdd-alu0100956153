RSpec.describe ValoresNutricionales do
  
	before :each do
		@etiqueta = Etiqueta.new()
	end

	describe "#exist" do
		it "instantiate correctly" do
			expect(@etiqueta).to be_an_instance_of(Etiqueta)
		end
	end
 
   
  
end
