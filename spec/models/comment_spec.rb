require 'rails_helper'

describe Comment do
  context "when comment gets created" do
    let(:product) { Product.create!(name: "Anything", description: "Anything", long_description: "Anything", ingredients: "Anything", how_to_use: "Anything", price: 10, image_url: "Anything") }
    let(:user) { User.create!(email: "test@catz-creationz.com", password: "123456") }

    before do
      product.comments.create!(rating: 3, user: user, body: "comment")
    end

    it "comment not valid without a user" do
      expect(Comment.new(user_id: nil, body: "This is an awesome facewash")).not_to be_valid
    end

    it "comment not valid without a body" do
      expect(Comment.new(body: "", user: user, product: product, rating: 2 )).not_to be_valid
    end

    it "comment not valid without a rating" do
      expect(Comment.new(body: "Great facewash", user: user, product: product, rating: nil )).not_to be_valid
    end

    it "is not valid without a product_id" do
      expect(Comment.new(product_id: nil)).to_not be_valid
    end

  end

end
