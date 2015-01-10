require 'rails_helper'

  describe Product do

  context "name present" do

    before(:each) { @product = Product.new(name: "Product1") }

    it "should return product name"
      expect(@product.name).to eq "Product1"
    end
  end