require 'rails_helper'

  describe Product do

  context "name present" do
    it "should return product name" do
      product = FactoryGirl.build(:product)
      expect(product.name).to eq "Test_Product"
    end
  end

  context "reverse name" do

    it "should return reversed name" do
      product = FactoryGirl.build(:product)
      expect(product.name.reverse).to eq "tcudorP_tseT"
    end
  end
end