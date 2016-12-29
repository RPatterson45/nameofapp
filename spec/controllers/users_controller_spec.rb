require 'rails_helper'

describe UsersController, type: :controller do
  #let(:user_1) { User.create!(email: 'Leona_Patterson@example.com', password: 'Leona45') }
  #let(:user_2) { User.create!(email: 'Brigid@test.com', password: 'Brigid10') }
  before do
    @user_1 = FactoryGirl.create(:user)
    @user_2 = FactoryGirl.create(:user)
  end

  describe 'GET #show' do
    context 'User is logged in' do
      before do
        sign_in @user_1
      end

      it 'Loads correct user details' do
        get :show, id: @user_1.id
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user_1
      end

      it 'redirected to root_path' do
        get :show, id: @user_2.id
        expect(response).to redirect_to(root_path) 
      end
    end

    context 'No user is logged in' do
      it 'redirects to login' do
        get :show, id: @user_1.id
        expect(response).to redirect_to(root_path)
      end  
    end
  end

end