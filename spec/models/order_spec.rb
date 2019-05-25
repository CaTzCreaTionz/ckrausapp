require 'rails_helper'

describe Order do
  context "when order gets created" do

    let(:product) { Product.create!(name: "Anything", description: "Anything", long_description: "Anything", ingredients: "Anything", how_to_use: "Anything", price: 10, image_url: "Anything") }
    let(:user) { User.create!(email: "test@catz-creationz.com", password: "123456") }

    it "order not valid without a user" do
      expect(Order.new(user_id: nil, product: product, total: 10)).not_to be_valid
    end

    it "order not valid without a product" do
      expect(Order.new(user: user, product: nil, total: 10)).not_to be_valid
    end

  end

end
