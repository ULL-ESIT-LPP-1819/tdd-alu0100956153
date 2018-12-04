RSpec.describe ValoresNutricionales do
  
	before :each do
		@etiqueta = Etiqueta.new(10,4,3,3,15,5,5,5,10,10,10)
	end

	describe "#exist" do
		it "instantiate correctly" do
			expect(@etiqueta).to be_an_instance_of(Etiqueta)
		end
	end
	describe "#Variables exist" do
		it "has and displays a variable grasas" do
			expect(@etiqueta.grasa).to equal(10)
		end
		it "Has and displays a variable grasas_saturadas" do
			expect(@etiqueta.grasas_saturadas).to equal(4)
		end
		it "Has and displays a variable grasas_monoinsaturadas" do
			expect(@etiqueta.grasas_monoinsaturadas).to equal(3)
		end
		it "Has and displays a variable grasas_poliinsaturadas" do
			expect(@etiqueta.grasas_poliinsaturadas).to equal(3)
		end


		it "Has and displays a variable Hidratos de carbono" do
			expect(@etiqueta.hidratos_de_carbono).to equal(15)
		end
		it "Has and displays a variable azucares" do
			expect(@etiqueta.azucares).to equal(5)
		end
		it "Has and displays a variable polialcoholes" do
			expect(@etiqueta.polialcoholes).to equal(5)
		end
		it "Has and displays a variable almidones" do
			expect(@etiqueta.almidones).to equal(5)
		end


		it "Has and displays a variable fibra_alimentaria" do
			expect(@etiqueta.fibra_alimentaria).to equal(10)
		end
		it "Has and displays a variable proteinas" do
			expect(@etiqueta.proteinas).to equal(10)
		end
		it "Has and displays a variable sales" do
			expect(@etiqueta.sales).to equal(10)
		end
	end
	describe "# Correctly calculates energetic value" do
		it "calculates energetic value on Kj" do
			expect(@etiqueta.valor_kj).to equal(1090)
		end 
		it "Calculates energetic value on kcal" do
			expect(@etiqueta.valor_kcal).to equal(261)
		end
	end
	describe "#Correctly calculates percentage of nutrients required from the reference that are on the label" do
		it "Calculates energetic value percentage" do
			expect(@etiqueta.porcentaje_kj).to equal(12.98)
		end
		it "Calculates fat percentage" do
			expect(@etiqueta.porcentaje_grasa).to equal(14.29)
		end
		it "Calculates acid saturated fat percentage" do
			expect(@etiqueta.porcentaje_grasas_saturadas).to equal(20.0)
		end
		it "Calculates carbohydrates percentage" do
			expect(@etiqueta.porcentaje_hidratos_de_carbono).to equal(5.77)
		end
		it "Calculates sugar percentage" do
			expect(@etiqueta.porcentaje_azucares).to equal(5.56)
		end
		it "Calculates proteins percentage" do
			expect(@etiqueta.porcentaje_proteinas).to equal(20.0)
		end
		it "Calculates salt percentage" do
			expect(@etiqueta.porcentaje_sales).to equal(166.67)
		end
 	end
       describe "#Etiqueta formateada" do
	it "print formatted label" do
#		puts @etiqueta.tabla			
       	end
       end
	describe "#Comparar" do
		it "compares correctly" do
			etiqueta1 = Etiqueta.new(10,4,3,3,15,5,5,5,10,10,10)
			expect(@etiqueta < etiqueta1).to equal(true)
		end
	end
 

	       
end
