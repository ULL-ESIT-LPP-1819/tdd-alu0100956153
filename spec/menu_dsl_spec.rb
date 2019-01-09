RSpec.describe MenuDsl do

	describe "#loads correctly" do
		it "loads an example" do
			menu = MenuDsl.new("lunes") do
				name = "test"
				desayuno :descripcion => "testerino",
					 :porcion => "1 rodaja",
					 :gramos => 100.0,
					 :grasas => 32.2,
					 :carbohidratos => 54.2,
					 :proteinas => 11.0,
					 :fibra => 2.3,
					 :sal => 0.06
			end


			puts menu.to_s
			
		end

	end

end



