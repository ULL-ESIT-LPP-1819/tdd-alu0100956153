require 'benchmark'
include Benchmark
RSpec.describe ValoresNutricionales do
	before(:all) do
		@menu = Menu.new
		@array_menu=[]	
		@menu_menor= Menu.new
		
		@com_menor =   Etiqueta.new(1,1,1,1,1,1,1,1,1,1,1)
		@menu.comida << @com_menor
		@menu.comida << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		@menu.comida << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		@menu.comida << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		@menu.comida << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		@menu.comida << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		@menu.comida << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		@menu.comida << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		@menu.comida << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		@menu.comida << Etiqueta.new(5,4,3,3,5,5,5,5,5,5,5)
		
		@menu_menor.comida << @com_menor
		@menu_menor.comida << @com_menor
		@menu_menor.comida << @com_menor
		@menu_menor.comida << @com_menor
		@menu_menor.comida << @com_menor
		@menu_menor.comida << @com_menor
		@menu_menor.comida << @com_menor
		@menu_menor.comida << @com_menor
		@menu_menor.comida << @com_menor
		@menu_menor.comida << @com_menor

                @array_menu << @menu_menor
                @array_menu << @menu
                @array_menu << @menu
                @array_menu << @menu
                @array_menu << @menu
                @array_menu << @menu
	        @array_menu << @menu
                @array_menu << @menu
                @array_menu << @menu
                @array_menu << @menu


		@list_menu = List.new()
		@list_menu.push_back(@menu_menor)
		@list_menu.push_back(@menu)
		@list_menu.push_back(@menu)
		@list_menu.push_back(@menu)
		@list_menu.push_back(@menu)
		@list_menu.push_back(@menu)
		@list_menu.push_back(@menu)
		@list_menu.push_back(@menu)
		@list_menu.push_back(@menu)
		@list_menu.push_back(@menu)
		
	end
	describe "#Reperesenta las valoraciones" do


		it "has a size of 10 as an array" do
			expect(@array_menu.size).to eq(10)
		end
		
		it "is in fact a array" do
			expect(@array_menu.is_a? Array).to eq(true)
		end

		it "has a list of arrays of size 10" do
			expect(@list_menu.size).to eq(10)	
		end
		it "is a list" do
			expect(@list_menu.is_a? List).to eq(true)
		end

	end
	describe "#Sorting" do
		it "sorts with for" do
		benchmark{	
			result= @array_menu.dup
	                for i in 0...result.size do
	                        for j in 0...result.size do
					
	                                if result[i] < result[j]
	                                       result[i],result[j] = result[i],result[j]
	                                end
	                        end
	                end
			expect(result[0]).to eq(@menu_menor)
		}
		end
		it "sorts with for list" do
			benchmark{
			copy = @list_menu.dup
	                result= []
                        for i in 0...result.size do
                               for j in 0...result.size do
				       	
                                        if result[i] < result[j]
                                               result[i],result[j] = result[i],result[j]
                                        end
                               end
                       end
			}
		end
		
		it "sorts with each array" do
			benchmark{
			copy= @array_menu.dup
			copy.each_index{|i| copy.each_index{|j| copy[i],copy[j] = copy[j],copy[i] if copy[i] < copy[j]}}
			expect(copy[0]).to eq(@menu_menor)
			}
		end
		it "sorts with each list" do
			benchmark{
			result=[]
			@list_menu.each{|x| result << x}
			
			result.each_index{|i| result.each_index{|j| result[i],result[j] = result[j],result[i] if result[i] < result[j]}}		
			
			expect(result[0]).to eq(@menu_menor)
			}
		end
		it "Sorts with sort array" do
			benchmark{
			result = @array_menu.sort
			expect(result[0]).to eq(@menu_menor)
			}
		end
		it "Sorts with sort list" do
			benchmark{
			result = @list_menu.sort
			expect(result[0]).to eq(@menu_menor)
			}
		end
		
	end
end
