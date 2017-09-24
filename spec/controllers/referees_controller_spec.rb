# spec/controllers/referees_controller_spec.rb
require 'rails_helper'

RSpec.describe RefereesController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.attributes_for :referee
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for :referee, surname: nil, givenname: nil
  }

  describe 'GET index' do
    it 'assigns all referees as @referees' do
      referee = FactoryGirl.create :referee
      get :index, {}
      expect(assigns(:referees)).to eq([referee])
    end
  end

  describe 'GET show' do
    it 'assigns the requested referee as @referee' do
      referee = FactoryGirl.create :referee
      get :show, { id: referee.to_param }
      expect(assigns(:referee)).to eq(referee)
    end
  end

  describe 'GET new' do
    it 'assigns a new referee as @referee' do
      get :new, {}
      expect(assigns(:referee)).to be_a_new(Referee)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested referee as @referee' do
      referee = FactoryGirl.create :referee
      get :edit, { id: referee.to_param }
      expect(assigns(:referee)).to eq(referee)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Referee' do
        expect {
          post :create, { referee: valid_attributes }
        }.to change(Referee, :count).by(1)
      end

      it 'assigns a newly created referee as @referee' do
        post :create, { referee: valid_attributes }
        expect(assigns(:referee)).to be_a(Referee)
        expect(assigns(:referee)).to be_persisted
      end

      it 'redirects to the created referee' do
        post :create, { referee: valid_attributes }
        expect(response).to redirect_to(Referee.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved referee as @referee' do
        post :create, { referee: invalid_attributes }
        expect(assigns(:referee)).to be_a_new(Referee)
      end

      it 're-renders the \'new\' template' do
        post :create, { referee: invalid_attributes }
        expect(response).to render_template("new")
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) {
        FactoryGirl.attributes_for :referee
      }

      it 'updates the requested referee' do
        referee = FactoryGirl.create :referee
        put :update, { id: referee.to_param, referee: new_attributes }
        referee.reload
        new_attributes.each { |key, value| expect(referee[key]).to eq(value) }
      end

      it 'assigns the requested referee as @referee' do
        referee = FactoryGirl.create :referee
        put :update, { id: referee.to_param, referee: valid_attributes }
        expect(assigns(:referee)).to eq(referee)
      end

      it 'redirects to the referee' do
        referee = FactoryGirl.create :referee
        put :update, { id: referee.to_param, referee: valid_attributes }
        expect(response).to redirect_to(referee)
      end
    end

    describe 'with invalid params' do
      it 'assigns the referee as @referee' do
        referee = FactoryGirl.create :referee
        put :update, { id: referee.to_param, referee: invalid_attributes }
        expect(assigns(:referee)).to eq(referee)
      end

      it 're-renders the \'edit\' template' do
        referee = FactoryGirl.create :referee
        put :update, { id: referee.to_param, referee: invalid_attributes }
        expect(response).to render_template("edit")
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested referee' do
      referee = FactoryGirl.create :referee
      expect {
        delete :destroy, { id: referee.to_param }
      }.to change(Referee, :count).by(-1)
    end

    it 'redirects to the referees list' do
      referee = FactoryGirl.create :referee
      delete :destroy, { id: referee.to_param }
      expect(response).to redirect_to(referees_url)
    end
  end

end
