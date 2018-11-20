RSpec.describe Individuo do
	before(:all) do
		@ind = Individuo.new("Foo","McFoo")
	end
        describe "#Individuo EXIST" do
                it "Creates a Individuo" do
			i = Individuo.new("Foo","McFoo")
			expect(i).to be_a(Individuo)
		end
		it "Has an attribute name" do
			expect(@ind.name).to eq("Foo")
		end	
	end
end


