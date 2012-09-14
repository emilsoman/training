require File.dirname(__FILE__)+ '/product'
require "spec_helper"
describe Product do
  it "products name is DOA" do
    product = Product.new
    product.name.should == "DOA"
  end
  
  it "Product price lessthen 500" do
    product = Product.new
    product.price.should < 500
  end

  it "product is available" do
    product = Product.new
    product.aval.should == true
  end
  
  it "is product sold" do
    product = Product.new
    product.is_product_sold?.should == true
  end

#  it "is name valid" do
#    product = Product.new
#    product.shuold_not be_valid
#  end
  it "has a name with match 'a'" do
    product = Product.new(name: "doa", price: 50, aval: true)
    product.name.should match(/'a' \d/)
  end
end
