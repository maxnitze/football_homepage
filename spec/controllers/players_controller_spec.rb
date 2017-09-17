# spec/controllers/players_controller_spec.rb
require 'rails_helper'

RSpec.describe PlayersController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.attributes_for :player
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for :player, surname: nil, givenname: nil
  }

  describe 'GET index' do
    it 'assigns all players as @players' do
      player = FactoryGirl.create :player
      get :index, {}
      expect(assigns(:players)).to eq([player])
    end
  end

  describe 'GET show' do
    it 'assigns the requested player as @player' do
      player = FactoryGirl.create :player
      get :show, { id: player.to_param }
      expect(assigns(:player)).to eq(player)
    end
  end

  describe 'GET new' do
    it 'assigns a new player as @player' do
      get :new, {}
      expect(assigns(:player)).to be_a_new(Player)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested player as @player' do
      player = FactoryGirl.create :player
      get :edit, { id: player.to_param }
      expect(assigns(:player)).to eq(player)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new player' do
        expect {
          post :create, { player: valid_attributes }
        }.to change(Player, :count).by(1)
      end

      it 'assigns a newly created player as @player' do
        post :create, { player: valid_attributes }
        expect(assigns(:player)).to be_a(Player)
        expect(assigns(:player)).to be_persisted
      end

      it 'redirects to the created player' do
        post :create, { player: valid_attributes }
        expect(response).to redirect_to(Player.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved player as @player' do
        post :create, { player: invalid_attributes }
        expect(assigns(:player)).to be_a_new(Player)
      end

      it "re-renders the 'new' template" do
        post :create, { player: invalid_attributes }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) {
        FactoryGirl.attributes_for :player
      }

      it 'updates the requested player' do
        player = FactoryGirl.create :player
        put :update, { id: player.to_param, player: new_attributes }
        player.reload
        new_attributes.each { |key, value| expect(eval("player.#{key}").to_s).to eq(value.to_s) }
      end

      it 'assigns the requested player as @player' do
        player = FactoryGirl.create :player
        put :update, { id: player.to_param, player: valid_attributes }
        expect(assigns(:player)).to eq(player)
      end

      it 'redirects to the player' do
        player = FactoryGirl.create :player
        put :update, { id: player.to_param, player: valid_attributes }
        expect(response).to redirect_to(player)
      end
    end

    describe 'with invalid params' do
      it 'assigns the player as @player' do
        player = FactoryGirl.create :player
        put :update, { id: player.to_param, player: invalid_attributes }
        expect(assigns(:player)).to eq(player)
      end

      it "re-renders the 'edit' template" do
        player = FactoryGirl.create :player
        put :update, { id: player.to_param, player: invalid_attributes }
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested player' do
      player = FactoryGirl.create :player
      expect {
        delete :destroy, { id: player.to_param }
      }.to change(Player, :count).by(-1)
    end

    it 'redirects to the players list' do
      player = FactoryGirl.create :player
      delete :destroy, { id: player.to_param }
      expect(response).to redirect_to(players_url)
    end
  end

end
