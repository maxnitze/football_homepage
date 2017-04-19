# spec/controllers/clubs_controller_spec.rb
require 'rails_helper'

RSpec.describe ClubsController, type: :controller do
  login_user :as_leagues_admin

  it 'should have a current user with leagues admin role' do
    expect(subject.current_user).to_not eq(nil)
    expect(subject.current_user.has_user_role? :leagues_admin).to be true
  end

  let(:valid_attributes) {
    FactoryGirl.attributes_for :club
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for :league, name: nil
  }

  describe 'GET index' do
    it 'assigns all clubs as @clubs' do
      club = FactoryGirl.create :club
      get :index, {}
      expect(assigns(:clubs)).to eq([club])
    end
  end

  describe 'GET show' do
    it 'assigns the requested club as @club' do
      club = FactoryGirl.create :club
      get :show, { id: club.to_param }
      expect(assigns(:club)).to eq(club)
    end
  end

  describe 'GET new' do
    it 'assigns a new club as @club' do
      get :new, {}
      expect(assigns(:club)).to be_a_new(Club)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested club as @club' do
      club = FactoryGirl.create :club
      get :edit, { id: club.to_param }
      expect(assigns(:club)).to eq(club)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Club' do
        expect {
          post :create, { club: valid_attributes }
        }.to change(Club, :count).by(1)
      end

      it 'assigns a newly created club as @club' do
        post :create, { club: valid_attributes }
        expect(assigns(:club)).to be_a(Club)
        expect(assigns(:club)).to be_persisted
      end

      it 'redirects to the created club' do
        post :create, { club: valid_attributes }
        expect(response).to redirect_to(Club.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved club as @club' do
        post :create, { club: invalid_attributes }
        expect(assigns(:club)).to be_a_new(Club)
      end

      it "re-renders the 'new' template" do
        post :create, { club: invalid_attributes }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) {
        FactoryGirl.attributes_for :club
      }

      it 'updates the requested club' do
        club = FactoryGirl.create :club
        put :update, { id: club.to_param, club: new_attributes }
        club.reload
        new_attributes.each { |key, value| expect(club[key]).to eq(value) }
      end

      it 'assigns the requested club as @club' do
        club = FactoryGirl.create :club
        put :update, { id: club.to_param, club: valid_attributes }
        expect(assigns(:club)).to eq(club)
      end

      it 'redirects to the club' do
        club = FactoryGirl.create :club
        put :update, { id: club.to_param, club: valid_attributes }
        expect(response).to redirect_to(club)
      end
    end

    describe 'with invalid params' do
      it 'assigns the club as @club' do
        club = FactoryGirl.create :club
        put :update, { id: club.to_param, club: invalid_attributes }
        expect(assigns(:club)).to eq(club)
      end

      it "re-renders the 'edit' template" do
        club = FactoryGirl.create :club
        put :update, { id: club.to_param, club: invalid_attributes }
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested club' do
      club = FactoryGirl.create :club
      expect {
        delete :destroy, { id: club.to_param }
      }.to change(Club, :count).by(-1)
    end

    it 'redirects to the clubs list' do
      club = FactoryGirl.create :club
      delete :destroy, { id: club.to_param }
      expect(response).to redirect_to(clubs_url)
    end
  end

end
