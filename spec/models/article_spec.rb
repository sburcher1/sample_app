require 'rails_helper'

  describe Article do

  context "title present" do

    before { @article = Article.new(title: "Article1") }

    it "should return article title" do
      expect(@article.title).to eq "Article1"
    end
  end
end