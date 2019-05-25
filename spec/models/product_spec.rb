require 'rails_helper'

describe Product do
  context "when the product has comments" do
    let(:product) { Product.create!(name: "Anything", description: "Anything", long_description: "Anything", ingredients: "Anything", how_to_use: "Anything", price: 10, image_url: "Anything") }
    let(:user) { User.create!(email: "test@catz-creationz.com", password: "123456") }

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful facewash!")
      product.comments.create!(rating: 3, user: user, body: "Ok facewash!")
      product.comments.create!(rating: 5, user: user, body: "Great facewash!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end
  end

  context "when product gets created" do
    let(:product) { Product.new(name: "Anything", description: "Anything", long_description: "Anything", ingredients: "Anything", how_to_use: "Anything", price: 10, image_url: "Anything") }

    it "is new record with valid attributes" do
      expect(Product.new).to be_new_record
    end
  end

  context "when product gets created" do
    let(:product) { Product.new(name: nil, description: "Anything", long_description: "Anything", ingredients: "Anything", how_to_use: "Anything", price: 10, image_url: "Anything") }

    it "is not valid without a name" do
      expect(Product.new).not_to be_valid
    end
  end

  context "when product gets created" do
    let(:product) { Product.new(name: "Anything", description: nil, long_description: "Anything", ingredients: "Anything", how_to_use: "Anything", price: 10, image_url: "Anything") }

    it "is not valid without a description" do
      expect(Product.new).not_to be_valid
    end
  end

  context "when product gets created" do
    let(:product) { Product.new(name: "Anything", description: "Anything", long_description: nil, ingredients: "Anything", how_to_use: "Anything", price: 10, image_url: "Anything") }

    it "is not valid without a long_description" do
      expect(Product.new).not_to be_valid
    end
  end

  context "when product gets created" do
    let(:product) { Product.new(name: "Anything", description: "Anything", long_description: "Anything", ingredients: nil, how_to_use: "Anything", price: 10, image_url: "Anything") }

    it "is not valid without ingredients" do
      expect(Product.new).not_to be_valid
    end
  end

  context "when product gets created" do
    let(:product) { Product.new(name: "Anything", description: "Anything", long_description: "Anything", ingredients: "Anything", how_to_use: nil, price: 10, image_url: "Anything") }

    it "is not valid without how_to_use" do
      expect(Product.new).not_to be_valid
    end
  end

  context "when product gets created" do
    let(:product) { Product.new(name: "Anything", description: "Anything", long_description: "Anything", ingredients: "Anything", how_to_use: "Anything", price: nil, image_url: "Anything") }

    it "is not valid without price" do
      expect(Product.new).not_to be_valid
    end
  end

  context "when product gets created" do
    let(:product) { Product.new(name: "Anything", description: "Anything", long_description: "Anything", ingredients: "Anything", how_to_use: "Anything", price: 10, image_url: nil) }

    it "is not valid without image_url" do
      expect(Product.new).not_to be_valid
    end
  end

end
