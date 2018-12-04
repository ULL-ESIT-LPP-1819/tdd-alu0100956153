RSpec.describe List do

	before(:all) do
		@list = List.new
		@list_it = List.new
		@list_vl = List.new
		@valoracion = Valoracion.new(10,10,10,10,10,10)
		@etiqueta = Etiqueta.new(10,4,3,3,15,5,5,5,10,10,10)
		@n = Node.new(@etiqueta,nil,nil)
		@salt_list = List.new
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
			
			expect(@list.head).to eq(nil)
		end
		it "Has a tail" do
			expect(@list.tail).to eq(nil)
		end
	end

	describe "#List can add elements" do
		it "adds an element on head" do
			@list.push_front(1)
			expect(@list.head.value).to eq(1)
		end
		it "adds an element on tail" do
			@list.push_back(2)
			expect(@list.tail.value).to eq(2)

		end 
	end

	describe "#List can pop" do
		it "adds an element on head" do
			a= @list.pop_front()
			expect(a).to eq(1)
		end
		it "adds an element on back" do
			a= @list.pop_back()
			expect(a).to eq(2)
		end
	end
	
	describe "#List can iterate" do
		it "gets its size" do
			expect(@list.size).to eq(1)
		end
		it "Clasifies salt levels do" do
			
			i=0
			while i<5 do
				etiqueta = Etiqueta.new(10,4,3,3,15,5,5,5,10,10,10)
				
				@salt_list.push_back(etiqueta)
				i= i+1
			end	
			res = @salt_list.sort
			expect(res[0].size).to eq(0)
		end	
	end
	describe "#iterates" do
		it "does max" do
			@list_it.push_back(@etiqueta)
			@list_it.push_front(@etiqueta)
			expect(@list_it.max).to eq(@etiqueta)
		end
		it "does min" do
			expect(@list_it.min).to eq(@etiqueta)
		end
		it" does select" do
			expect(@list_it.select { |item| item == @etiqueta }.size).to eq(2)
		
		end
		it "does collect" do
			expect(@list_it.collect {"cat"}.size).to eq(2)
		end
		it "does sort" do
			result= Array.new(2,@etiqueta)
			
			#expect(@list_it.sort).to eq(result)
		end
	end
	describe "#iterates valoracion" do
		it "does max" do
			@list_vl.push_back(@valoracion)
			@list_vl.push_back(@valoracion)
			expect(@list_vl.max).to eq(@valoracion)
		end
		it "does min" do
			expect(@list_vl.min).to eq(@valoracion)
		end
		it "does select" do
			expect(@list_vl.select { |item| item == @valoracion}.size).to eq(2)
		end
		it "does collect " do
			expect(@list_vl.collect {"cat"}.size).to eq(2)
		end
		it "does sort" do
			result = Array.new(2,@valoracion)

		end
	end
end


