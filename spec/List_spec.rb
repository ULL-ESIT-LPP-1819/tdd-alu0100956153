RSpec.describe List do


	describe "#NODE EXIST" do
		it "Creates a node" do
			n = Node.new
			expect(n).to be_an_instance_of(Node)		
		end
	end


end


