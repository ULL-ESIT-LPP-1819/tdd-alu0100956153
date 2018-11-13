RSpec.describe List do

	before(:all) do
		@list = List.new
		@etiqueta = Etiqueta.new(10,4,3,3,15,5,5,5,10,10,10)
		@n = Node.new(@etiqueta,nil,nil)
	end

	describe "#NODE EXIST" do
		it "Creates a node" do
			n = Node.new(5, nil,nil)
			expect(n).to be_a(Struct)
		end
	 	it "Contains a variable" do
			n = Node.new(5,nil,nil)
			expect(n.value).to eq(5)
		end
		it "Can contain a ValorNutricional element" do
			etiqueta = Etiqueta.new(10,4,3,3,15,5,5,5,10,10,10)
			n= Node.new(etiqueta,nil,nil)
			expect(n.value).to be_an_instance_of(Etiqueta)
		end	
	end

	describe "#List has basic functions" do
		it "Creates a list" do
			expect(@list).to be_an_instance_of(List)
		end
		it "Has a head" do
			
			expect(@list.head.value).to eq(5)
		end
		it "Has a tail" do
			expect(@list.tail.value).to eq(5)
		end
	end


end


