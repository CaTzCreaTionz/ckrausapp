require 'rails_helper'

describe ProductsController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    @product = FactoryBot.create(:product)
  end


  context 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

  context 'GET #show' do
    it 'renders the product show page' do
      get :show, params: { id: @product.id }
      expect(response).to be_ok
    end
  end

  context 'GET #new' do
    it 'renders the product new page' do
      get :new, params: { id: @product.id }
      expect(response).to be_ok
    end
  end

  context 'POST #create when not admin' do
    before do
      sign_in @user
    end
    it 'cannot create new product' do
      expect(Product.new).not_to be_valid
    end
  end


end
