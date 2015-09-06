require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe LeagueTeamsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # LeagueTeam. As you add validations to LeagueTeam, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LeagueTeamsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all league_teams as @league_teams" do
      league_team = LeagueTeam.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:league_teams)).to eq([league_team])
    end
  end

  describe "GET #show" do
    it "assigns the requested league_team as @league_team" do
      league_team = LeagueTeam.create! valid_attributes
      get :show, {:id => league_team.to_param}, valid_session
      expect(assigns(:league_team)).to eq(league_team)
    end
  end

  describe "GET #new" do
    it "assigns a new league_team as @league_team" do
      get :new, {}, valid_session
      expect(assigns(:league_team)).to be_a_new(LeagueTeam)
    end
  end

  describe "GET #edit" do
    it "assigns the requested league_team as @league_team" do
      league_team = LeagueTeam.create! valid_attributes
      get :edit, {:id => league_team.to_param}, valid_session
      expect(assigns(:league_team)).to eq(league_team)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new LeagueTeam" do
        expect {
          post :create, {:league_team => valid_attributes}, valid_session
        }.to change(LeagueTeam, :count).by(1)
      end

      it "assigns a newly created league_team as @league_team" do
        post :create, {:league_team => valid_attributes}, valid_session
        expect(assigns(:league_team)).to be_a(LeagueTeam)
        expect(assigns(:league_team)).to be_persisted
      end

      it "redirects to the created league_team" do
        post :create, {:league_team => valid_attributes}, valid_session
        expect(response).to redirect_to(LeagueTeam.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved league_team as @league_team" do
        post :create, {:league_team => invalid_attributes}, valid_session
        expect(assigns(:league_team)).to be_a_new(LeagueTeam)
      end

      it "re-renders the 'new' template" do
        post :create, {:league_team => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested league_team" do
        league_team = LeagueTeam.create! valid_attributes
        put :update, {:id => league_team.to_param, :league_team => new_attributes}, valid_session
        league_team.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested league_team as @league_team" do
        league_team = LeagueTeam.create! valid_attributes
        put :update, {:id => league_team.to_param, :league_team => valid_attributes}, valid_session
        expect(assigns(:league_team)).to eq(league_team)
      end

      it "redirects to the league_team" do
        league_team = LeagueTeam.create! valid_attributes
        put :update, {:id => league_team.to_param, :league_team => valid_attributes}, valid_session
        expect(response).to redirect_to(league_team)
      end
    end

    context "with invalid params" do
      it "assigns the league_team as @league_team" do
        league_team = LeagueTeam.create! valid_attributes
        put :update, {:id => league_team.to_param, :league_team => invalid_attributes}, valid_session
        expect(assigns(:league_team)).to eq(league_team)
      end

      it "re-renders the 'edit' template" do
        league_team = LeagueTeam.create! valid_attributes
        put :update, {:id => league_team.to_param, :league_team => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested league_team" do
      league_team = LeagueTeam.create! valid_attributes
      expect {
        delete :destroy, {:id => league_team.to_param}, valid_session
      }.to change(LeagueTeam, :count).by(-1)
    end

    it "redirects to the league_teams list" do
      league_team = LeagueTeam.create! valid_attributes
      delete :destroy, {:id => league_team.to_param}, valid_session
      expect(response).to redirect_to(league_teams_url)
    end
  end

end
