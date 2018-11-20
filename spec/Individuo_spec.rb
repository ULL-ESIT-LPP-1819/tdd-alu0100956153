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


