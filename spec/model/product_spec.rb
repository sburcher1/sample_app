require 'rails_helper'

  describe Product do

  context "name present" do

    before(:each) { @product = Product.new(name: "Product1") }

    it "should return product name" do
      expect(@product.name).to eq "Product1"
    end
  end
end

  describe Product do

  context "reverse name" do

    before { @product = Product.new(name: "Product1")}

    it "should return reversed name" do
      expect(@product.name.reverse).to eq "1tcudorP"
    end
  end
end