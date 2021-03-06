require File.dirname(__FILE__)+ '/../abc'
describe Abc do
	context "addition" do
		it "add num" do
			a = 1
			b = 7
			c = 8
			d = Abc.add(a,b)
			d.should == c
		end
	end
	context "addition with nil" do
		it "should return the other no" do
			a = nil
			b = 7
			c = 7
			d = Abc.add(a,b)
			d.should == c
		end
	end
end
