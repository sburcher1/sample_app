require 'rails_helper'

  describe Comment do

  context "commnter present" do

    before { @comment = Comment.new(commenter: "Commenter1") }

    it "should return comment commenter" do
      expect(@comment.commenter).to eq "Commenter1"
    end
  end
end