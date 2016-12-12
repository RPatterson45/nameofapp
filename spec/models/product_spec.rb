require 'rails_helper'

describe Product do
  context "when the product has comments" do
    before do
      @product = Product.create!(name: "Sugar Cookies")
    
      #@user = User.create!(email: "test@fakeemail.com", password: "123456")
      @user = FactoryGirl.create(:user)

      @product.comments.create!(rating: 1, user: @user, body: "Too much sugar!!")
      @product.comments.create!(rating: 3, user: @user, body: "Not bad...")
      @product.comments.create!(rating: 5, user: @user, body: "I love these cookies!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  end

  context "when product does not have a name" do
    it "returns an error or is invalid" do
      expect(Product.new(description: "An addicting oatmeal cookie")).not_to be_valid
    end
  end
end