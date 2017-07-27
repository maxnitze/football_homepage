# spec/controllers/matches_controller_spec.rb
require 'rails_helper'

RSpec.describe MatchesController, type: :controller do
  login_user :as_leagues_admin

  it 'should have a current user with leagues admin role' do
    expect(subject.current_user).to_not eq(nil)
    expect(subject.current_user.has_user_role? :leagues_admin).to be true
  end

  let(:valid_attributes) {
    FactoryGirl.attributes_for :match
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for :match, league_id: nil
  }

  describe 'GET index' do
    it 'assigns all matches as @matches' do
      match = FactoryGirl.create :match
      get :index, {}
      expect(assigns(:matches)).to eq([match])
    end
  end

  describe 'GET show' do
    it 'assigns the requested match as @match' do
      match = FactoryGirl.create :match
      get :show, { id: match.to_param }
      expect(assigns(:match)).to eq(match)
    end
  end

  describe 'GET new' do
    it 'assigns a new match as @match' do
      get :new, {}
      expect(assigns(:match)).to be_a_new(Match)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested match as @match' do
      match = FactoryGirl.create :match
      get :edit, { id: match.to_param }
      expect(assigns(:match)).to eq(match)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Match' do
        expect {
          post :create, { match: valid_attributes }
        }.to change(Match, :count).by(1)
      end

      it 'assigns a newly created match as @match' do
        post :create, { match: valid_attributes }
        expect(assigns(:match)).to be_a(Match)
        expect(assigns(:match)).to be_persisted
      end

      it 'redirects to the created match' do
        post :create, { match: valid_attributes }
        expect(response).to redirect_to(Match.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved match as @match' do
        post :create, { match: invalid_attributes }
        expect(assigns(:match)).to be_a_new(Match)
      end

      it 're-renders the \'new\' template' do
        post :create, { match: invalid_attributes }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) {
        FactoryGirl.attributes_for :match
      }

      it 'updates the requested match' do
        match = FactoryGirl.create :match
        put :update, { id: match.to_param, match: new_attributes }
        match.reload
        new_attributes.each { |key, value| expect(match[key]).to eq(value) }
      end

      it 'assigns the requested match as @match' do
        match = FactoryGirl.create :match
        put :update, { id: match.to_param, match: valid_attributes }
        expect(assigns(:match)).to eq(match)
      end

      it 'redirects to the match' do
        match = FactoryGirl.create :match
        put :update, { id: match.to_param, match: valid_attributes }
        expect(response).to redirect_to(match)
      end
    end

    describe 'with invalid params' do
      it 'assigns the match as @match' do
        match = FactoryGirl.create :match
        put :update, { id: match.to_param, match: invalid_attributes }
        expect(assigns(:match)).to eq(match)
      end

      it 're-renders the \'edit\' template' do
        match = FactoryGirl.create :match
        put :update, { id: match.to_param, match: invalid_attributes }
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested match' do
      match = FactoryGirl.create :match
      expect {
        delete :destroy, { id: match.to_param }
      }.to change(Match, :count).by(-1)
    end

    it 'redirects to the matches list' do
      match = FactoryGirl.create :match
      delete :destroy, { id: match.to_param }
      expect(response).to redirect_to(matches_url)
    end
  end

end
