require 'rails_helper'

describe Comment do

  context "incomplete comment" do
    it "is invalid without a body" do
      expect(Comment.new(body: nil)).to_not be_valid
    end

    it "is invalid without a rating" do
      expect(Comment.new(rating: nil)).to_not be_valid
    end
  end
end