require 'rails_helper'

describe CommentsController, type: :controller do
  let(:user) { User.create!(email: "test@catz-creationz.com", password: "123456") }
  let(:product) { Product.create!(name: "Awesome facewash") }

  context 'when user is logged in' do
    before do
      sign_in user
    end

    it 'user can create comment' do
      post :create, params: { product_id: product.id, comment: { body: "Great facewash", rating: 5 } }
      expect(response).to have_http_status(302)
    end
  end
end
