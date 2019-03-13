require 'rails_helper'

describe Comment do
  context "when comment gets created" do
    let(:product) { Product.create!(name: "Awesome facewash") }
    let(:user) { User.create!(email: "test@catz-creationz.com", password: "123456") }

    it "comment not valid without a user" do
      expect(Comment.new(user_id: nil, body: "This is an awesome facewash")).not_to be_valid
    end
  end

  context "when comment gets created" do
    let(:product) { Product.create!(name: "Awesome facewash") }
    let(:user) { User.create!(email: "test@catz-creationz.com", password: "123456") }

    it "comment not valid without a body" do
      expect(Comment.new(body: "", user: user, product: product, rating: 2 )).not_to be_valid
    end
  end

  context "when comment gets created" do
    let(:product) { Product.create!(name: "Awesome facewash") }
    let(:user) { User.create!(email: "test@catz-creationz.com", password: "123456") }

    it "comment not valid without a rating" do
      expect(Comment.new(body: "Great facewash", user: user, product: product, rating: nil )).not_to be_valid
    end
  end

end
