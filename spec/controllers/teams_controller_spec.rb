# spec/controllers/teams_controller_spec.rb
require 'rails_helper'

RSpec.describe TeamsController, type: :controller do
  login_user :as_teams_admin

  it 'should have a current user with teams admin role' do
    expect(subject.current_user).to_not eq(nil)
    expect(subject.current_user.has_user_role? :teams_admin).to be true
  end

  let(:valid_attributes) {
    FactoryGirl.attributes_for :team
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for :team, name: nil
  }

  describe 'GET index' do
    it 'assigns all hometeams as @teams' do
      skip('Assigns league teams to @league_teams!')
    end
  end

  describe 'GET show' do
    it 'assigns the requested team as @team' do
      team = FactoryGirl.create :team
      get :show, { id: team.to_param }
      expect(assigns(:team)).to eq(team)
    end
  end

  describe 'GET new' do
    it 'assigns a new team as @team' do
      get :new, {}
      expect(assigns(:team)).to be_a_new(Team)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested team as @team' do
      team = FactoryGirl.create :team
      get :edit, { id: team.to_param }
      expect(assigns(:team)).to eq(team)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Team' do
        expect {
          post :create, { team: valid_attributes }
        }.to change(Team, :count).by(1)
      end

      it 'assigns a newly created team as @team' do
        post :create, { team: valid_attributes }
        expect(assigns(:team)).to be_a(Team)
        expect(assigns(:team)).to be_persisted
      end

      it 'redirects to the created team' do
        post :create, { team: valid_attributes }
        expect(response).to redirect_to(Team.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved team as @team' do
        post :create, { team: invalid_attributes }
        expect(assigns(:team)).to be_a_new(Team)
      end

      it "re-renders the 'new' template" do
        post :create, { team: invalid_attributes }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) {
        FactoryGirl.attributes_for :team
      }

      it 'updates the requested team' do
        team = FactoryGirl.create :team
        put :update, { id: team.to_param, team: new_attributes }
        team.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested team as @team' do
        team = FactoryGirl.create :team
        put :update, { id: team.to_param, team: new_attributes }
        expect(assigns(:team)).to eq(team)
      end

      it 'redirects to the team' do
        team = FactoryGirl.create :team
        put :update, { id: team.to_param, team: new_attributes }
        expect(response).to redirect_to(team)
      end
    end

    describe 'with invalid params' do
      it 'assigns the team as @team' do
        team = FactoryGirl.create :team
        put :update, { id: team.to_param, team: invalid_attributes }
        expect(assigns(:team)).to eq(team)
      end

      it "re-renders the 'edit' template" do
        team = FactoryGirl.create :team
        put :update, { id: team.to_param, team: invalid_attributes }
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested team' do
      team = FactoryGirl.create :team
      expect {
        delete :destroy, { id: team.to_param }
      }.to change(Team, :count).by(-1)
    end

    it 'redirects to the teams list' do
      team = FactoryGirl.create :team
      delete :destroy, { id: team.to_param }
      expect(response).to redirect_to(teams_url)
    end
  end

end
