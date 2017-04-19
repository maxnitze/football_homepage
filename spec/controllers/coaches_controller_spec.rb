# spec/controllers/coaches_controller_spec.rb
require 'rails_helper'

RSpec.describe CoachesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Coach. As you add validations to Coach, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for :coach
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for :coach, surname: nil, givenname: nil
  }

  describe 'GET index' do
    it 'assigns all coaches as @coaches' do
      coach = FactoryGirl.create :coach
      get :index, {}
      expect(assigns(:coaches)).to eq([coach])
    end
  end

  describe 'GET show' do
    it 'assigns the requested coach as @coach' do
      coach = FactoryGirl.create :coach
      get :show, { id: coach.to_param }
      expect(assigns(:coach)).to eq(coach)
    end
  end

  describe 'GET new' do
    it 'assigns a new coach as @coach' do
      get :new, {}
      expect(assigns(:coach)).to be_a_new(Coach)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested coach as @coach' do
      coach = FactoryGirl.create :coach
      get :edit, { id: coach.to_param }
      expect(assigns(:coach)).to eq(coach)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Coach' do
        expect {
          post :create, { coach: valid_attributes }
        }.to change(Coach, :count).by(1)
      end

      it 'assigns a newly created coach as @coach' do
        post :create, { coach: valid_attributes }
        expect(assigns(:coach)).to be_a(Coach)
        expect(assigns(:coach)).to be_persisted
      end

      it 'redirects to the created coach' do
        post :create, { coach: valid_attributes }
        expect(response).to redirect_to(Coach.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved coach as @coach' do
        post :create, { coach: invalid_attributes }
        expect(assigns(:coach)).to be_a_new(Coach)
      end

      it "re-renders the 'new' template" do
        post :create, { coach: invalid_attributes }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) {
        FactoryGirl.attributes_for :coach
      }

      it 'updates the requested coach' do
        coach = FactoryGirl.create :coach
        put :update, { id: coach.to_param, coach: new_attributes }
        coach.reload
        new_attributes.each { |key, value| expect(coach[key]).to eq(value) }
      end

      it 'assigns the requested coach as @coach' do
        coach = FactoryGirl.create :coach
        put :update, { id: coach.to_param, coach: valid_attributes }
        expect(assigns(:coach)).to eq(coach)
      end

      it 'redirects to the coach' do
        coach = FactoryGirl.create :coach
        put :update, { id: coach.to_param, coach: valid_attributes }
        expect(response).to redirect_to(coach)
      end
    end

    describe 'with invalid params' do
      it 'assigns the coach as @coach' do
        coach = FactoryGirl.create :coach
        put :update, { id: coach.to_param, coach: invalid_attributes }
        expect(assigns(:coach)).to eq(coach)
      end

      it "re-renders the 'edit' template" do
        coach = FactoryGirl.create :coach
        put :update, { id: coach.to_param, coach: invalid_attributes }
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested coach' do
      coach = FactoryGirl.create :coach
      expect {
        delete :destroy, { id: coach.to_param }
      }.to change(Coach, :count).by(-1)
    end

    it 'redirects to the coaches list' do
      coach = FactoryGirl.create :coach
      delete :destroy, { id: coach.to_param }
      expect(response).to redirect_to(coaches_url)
    end
  end

end
