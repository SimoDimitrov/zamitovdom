require 'rspec'
require '../lib/rome_converter.rb' 

describe 'Roman converter' do
	
	before do
		@roman = RomeConverter.new
	end

	it "convert I to 1" do
		expect(@roman.to_rome 1).to eq('I')
	end

	it "convert 1 to I" do
		expect(@roman.to_dec "I").to eq(1)
	end

	it "convert III to 3" do
		expect(@roman.to_rome 3).to eq('III')
	end

	it "convert 3 to III" do
		expect(@roman.to_dec "III").to eq(3)
	end

	it "convert VII to 7" do
		expect(@roman.to_rome 7).to eq('VII')
	end

	it "convert 7 to VII" do
		expect(@roman.to_dec "VII").to eq(7)
	end
	
	it "convert IX to 9" do
		expect(@roman.to_rome 9).to eq('IX')
	end

	it "convert 9 to IX" do
		expect(@roman.to_dec "IX").to eq(9)
	end

	it "convert X to 10" do
		expect(@roman.to_rome 10).to eq('X')
	end

	it "convert 10 to X" do
		expect(@roman.to_dec "X").to eq(10)
	end

	it "convert XVI to 16" do
		expect(@roman.to_rome 16).to eq('XVI')
	end

	it "convert 16 to XVI" do
		expect(@roman.to_dec "XVI").to eq(16)
	end

	it "convert XXIX to 29" do
		expect(@roman.to_rome 29).to eq('XXIX')
	end

	it "convert 29 to XXIX" do
		expect(@roman.to_dec "XXIX").to eq(29)
	end

	it "convert XL to 40" do
		expect(@roman.to_rome 40).to eq('XL')
	end

	it "convert 40 to XL" do
		expect(@roman.to_dec "XL").to eq(40)
	end

	it "convert L to 50" do
		expect(@roman.to_rome 50).to eq('L')
	end

	it "convert 50 to L" do
		expect(@roman.to_dec "L").to eq(50)
	end

	it "convert LII to 52" do
		expect(@roman.to_rome 52).to eq('LII')
	end

	it "convert 52 to LII" do
		expect(@roman.to_dec "LII").to eq(52)
	end

	it "convert XC to 90" do
		expect(@roman.to_rome 90).to eq('XC')
	end

	it "convert 90 to XC" do
		expect(@roman.to_dec "XC").to eq(90)
	end

	it "convert C to 100" do
		expect(@roman.to_rome 100).to eq('C')
	end

	it "convert 100 to C" do
		expect(@roman.to_dec "C").to eq(100)
	end

	it "convert CXCVI to 196" do
		expect(@roman.to_rome 196).to eq('CXCVI')
	end

	it "convert 196 to CXCVI" do
		expect(@roman.to_dec "CXCVI").to eq(196)
	end

	it "convert DC to 600" do
		expect(@roman.to_rome 600).to eq('DC')
	end

	it "convert 600 to DC" do
		expect(@roman.to_dec "DC").to eq(600)
	end

	it "convert DCCC to 800" do
		expect(@roman.to_rome 800).to eq('DCCC')
	end

	it "convert 800 to DCCC" do
		expect(@roman.to_dec "DCCC").to eq(800)
	end

	it "convert M to 1000" do
		expect(@roman.to_rome 1000).to eq('M')
	end

	it "convert 1000 to M" do
		expect(@roman.to_dec "M").to eq(1000)
	end

	it "convert MCXI to 1111" do
		expect(@roman.to_rome 1111).to eq('MCXI')
	end

	it "convert 1111 to MCXI" do
		expect(@roman.to_dec "MCXI").to eq(1111)
	end
	
	it "convert MCMXCIX to 1999" do
		expect(@roman.to_rome 1999).to eq('MCMXCIX')
	end

	it "convert 1999 to MCMXCIX" do
		expect(@roman.to_dec "MCMXCIX").to eq(1999)
	end
	
	it "convert MMXVI to 2016" do
		expect(@roman.to_rome 2016).to eq('MMXVI')
	end

	it "convert 2016 to MMXVI" do
		expect(@roman.to_dec "MMXVI").to eq(2016)
	end
	
	it "convert MMMD to 3500" do
		expect(@roman.to_rome 3500).to eq('MMMD')
	end

	it "convert 3500 to MMMD" do
		expect(@roman.to_dec "MMMD").to eq(3500)
	end

	it "convert MMMDLII to 3552" do
		expect(@roman.to_rome 3552).to eq('MMMDLII')
	end

	it "convert 3552 to MMMDLII" do
		expect(@roman.to_dec "MMMDLII").to eq(3552)
	end
	
	it "convert MMMMDCCLXXI to 4771" do
		expect(@roman.to_rome 4771).to eq('MMMMDCCLXXI')
	end

	it "convert 4771 to MMMMDCCLXXI" do
		expect(@roman.to_dec "MMMMDCCLXXI").to eq(4771)
	end

	it "convert MMMDDDCCCLLLXXX to 4998" do
		expect(@roman.to_rome 4998).to eq('MMMDDDCCCLLLXXXVVVIII')
	end

	it "convert 4998 to MMMDDDCCCLLLXXX" do
		expect(@roman.to_dec "MMMDDDCCCLLLXXX").to eq(4998)
	end

end