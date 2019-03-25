require 'rails_helper'

describe OrdersController, type: :controller do
  let(:user) { User.create!(email: "test@catz-creationz.com", password: "123456") }
  let(:product) { Product.create!(name: "Awesome facewash") }
  let(:order) {Order.create!(user: user, product: product, total: product.price)}

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in user
      end

      it 'show correct user order details' do
        get :show, params: { id: order.id }
        expect(response).to be_ok
        expect(assigns(:order)).to eq order
      end
    end
  end

end
