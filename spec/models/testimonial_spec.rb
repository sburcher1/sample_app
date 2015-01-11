require 'rails_helper'

  describe Testimonial do

  context "name present" do

    before { @testimonial = Testimonial.new(name: "Name1") }

    it "should return testimonial name" do
      expect(@testimonial.name).to eq "Name1"
    end
  end
end