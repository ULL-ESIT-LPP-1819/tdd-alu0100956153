RSpec.describe Individuo do
	before(:all) do
		
	end
        describe "#Individuo EXIST" do
                it "Creates a Individuo" do
			i = Individuo.new("Foo","McFoo")
			expect(i).to be_a(Individuo)
		end
	end
end


