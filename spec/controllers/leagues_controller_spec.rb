# spec/controllers/leagues_controller_spec.rb
require 'rails_helper'

RSpec.describe LeaguesController, type: :controller do
  login_admin

  it "should have a current_user" do
    expect(subject.current_user).to_not eq(nil)
  end

  let(:valid_attributes) {
    FactoryGirl.attributes_for :league
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for :league, name: nil
  }

  describe "GET index" do
    it "assigns all leagues as @leagues" do
      league = League.create! valid_attributes
      get :index, {}
      expect(assigns(:leagues)).to eq([league])
    end
  end

  describe "GET show" do
    it "assigns the requested league as @league" do
      league = League.create! valid_attributes
      get :show, {:id => league.to_param}
      expect(assigns(:league)).to eq(league)
    end
  end

  describe "GET new" do
    it "assigns a new league as @league" do
      get :new, {}
      expect(assigns(:league)).to be_a_new(League)
    end
  end

  describe "GET edit" do
    it "assigns the requested league as @league" do
      league = League.create! valid_attributes
      get :edit, {:id => league.to_param}
      expect(assigns(:league)).to eq(league)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new League" do
        expect {
          post :create, {:league => valid_attributes}
        }.to change(League, :count).by(1)
      end

      it "assigns a newly created league as @league" do
        post :create, {:league => valid_attributes}
        expect(assigns(:league)).to be_a(League)
        expect(assigns(:league)).to be_persisted
      end

      it "redirects to the created league" do
        post :create, {:league => valid_attributes}
        expect(response).to redirect_to(League.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved league as @league" do
        post :create, {:league => invalid_attributes}
        expect(assigns(:league)).to be_a_new(League)
      end

      it "re-renders the 'new' template" do
        post :create, {:league => invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        FactoryGirl.attributes_for :league
      }

      it "updates the requested league" do
        league = League.create! valid_attributes
        put :update, {:id => league.to_param, :league => new_attributes}
        league.reload
        new_attributes.each do |key, value|
          expect(league[key]).to eq(value)
        end
      end

      it "assigns the requested league as @league" do
        league = League.create! valid_attributes
        put :update, {:id => league.to_param, :league => valid_attributes}
        expect(assigns(:league)).to eq(league)
      end

      it "redirects to the league" do
        league = League.create! valid_attributes
        put :update, {:id => league.to_param, :league => valid_attributes}
        expect(response).to redirect_to(league)
      end
    end

    describe "with invalid params" do
      it "assigns the league as @league" do
        league = League.create! valid_attributes
        put :update, {:id => league.to_param, :league => invalid_attributes}
        expect(assigns(:league)).to eq(league)
      end

      it "re-renders the 'edit' template" do
        league = League.create! valid_attributes
        put :update, {:id => league.to_param, :league => invalid_attributes}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested league" do
      league = League.create! valid_attributes
      expect {
        delete :destroy, {:id => league.to_param}
      }.to change(League, :count).by(-1)
    end

    it "redirects to the leagues list" do
      league = League.create! valid_attributes
      delete :destroy, {:id => league.to_param}
      expect(response).to redirect_to(leagues_url)
    end
  end

end
