RSpec.describe ValoresNutricionales do
	

	describe "#Reperesenta las valoraciones" do
		menu = []
		array_menu=[]
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		menu << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)

		array_menu << menu
		array_menu << menu
		array_menu << menu
		array_menu << menu
		array_menu << menu
		array_menu << menu
		array_menu << menu
		array_menu << menu
		array_menu << menu
		array_menu << menu

		it "has a size of 10 as an array" do
			expect(array_menu.size).to eq(10)
		end
		
		it "is in fact a array" do
			expect(array_menu.is_a? Array).to eq(true)
		end
	end


end
