require 'rails_helper'

describe OrdersController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    @product = FactoryBot.create(:product)
  end

  let(:order) {Order.create!(user: @user, product: @product, total: @product.price)}

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in @user
      end

      it 'show correct user order details' do
        get :show, params: { id: order.id }
        expect(response).to be_ok
        expect(assigns(:order)).to eq order
      end
    end
  end

end
