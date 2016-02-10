require 'rails_helper'

describe Product do
  context "when the product has comments" do
    before do
      @product = Product.create!(name: "some book")
      @user = User.create!(email: "something@example.com",
                            password: "q3%K5678")
      @product.comments.create!(rating: 1, user: @user, body: "Awful book")
      @product.comments.create!(rating: 3, user: @user, body: "Not bad")
      @product.comments.create!(rating: 5, user: @user, body: "Great")
      @average_rating = @product.comments.average(:rating)
    end

    it "returns the average rating of all comments" do
      expect(@average_rating).to eq 3
    end
  end

  context "product does not have name" do
    before do
      @product = Product.new(name: "some book", description: "some description")
    end

    it "is not valid" do
      expect(Product.new(description: "some description")).not_to be_valid
    end
  end
end

