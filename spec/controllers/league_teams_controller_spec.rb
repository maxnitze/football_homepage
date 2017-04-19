# spec/controllers/league_teams_controller_spec.rb
require 'rails_helper'

RSpec.describe LeagueTeamsController, type: :controller do
  login_user :as_leagues_admin

  it 'should have a current user with leagues admin role' do
    expect(subject.current_user).to_not eq(nil)
    expect(subject.current_user.has_user_role? :leagues_admin).to be true
  end

  let(:valid_attributes) {
    FactoryGirl.attributes_for :league_team
  }

  let(:invalid_attributes_w_league) {
    FactoryGirl.attributes_for :league_team, team: nil
  }

  let(:invalid_attributes_wo_league) {
    FactoryGirl.attributes_for :league_team, team: nil, league: nil
  }

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new LeagueTeam' do
        expect {
          post :create, { league_team: valid_attributes }
        }.to change(LeagueTeam, :count).by(1)
      end

      it 'assigns a newly created league_team as @league_team' do
        post :create, { league_team: valid_attributes }
        expect(assigns(:league_team)).to be_a(LeagueTeam)
        expect(assigns(:league_team)).to be_persisted
      end

      it 'redirects to the edit page of the league of the created league_team' do
        post :create, { league_team: valid_attributes }
        expect(response).to redirect_to(edit_league_path LeagueTeam.last.league)
      end
    end

    context 'with invalid params' do
      it 'redirects to the edit page of the league if a league is given' do
        post :create, { league_team: invalid_attributes_w_league }
        expect(response).to redirect_to(edit_league_path invalid_attributes_w_league[:league_id])
      end

      it 'redirects to the league index path if a no league is given' do
        post :create, { league_team: invalid_attributes_wo_league }
        expect(response).to redirect_to(leagues_path)
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) {
        FactoryGirl.attributes_for :league_team
      }

      let(:new_attributes_wo_league) {
        FactoryGirl.attributes_for :league_team, league: nil
      }

      it 'updates the requested league_team' do
        league_team = FactoryGirl.create :league_team
        put :update, { id: league_team.to_param, league_team: new_attributes }
        league_team.reload
        new_attributes.each { |key, value| expect(league_team[key]).to eq(value) }
      end

      it 'assigns the requested league_team as @league_team' do
        league_team = FactoryGirl.create :league_team
        put :update, { id: league_team.to_param, league_team: new_attributes }
        expect(assigns(:league_team)).to eq(league_team)
      end

      it 'redirects to the edit page of the assigned league' do
        league_team = FactoryGirl.create :league_team
        t_new_attributes = new_attributes
        put :update, { id: league_team.to_param, league_team: t_new_attributes }
        expect(response).to redirect_to(edit_league_path t_new_attributes[:league_id])
      end

      it 'redirects to the edit page of the original league if no new was given' do
        league_team = FactoryGirl.create :league_team
        put :update, { id: league_team.to_param, league_team: new_attributes_wo_league }
        expect(response).to redirect_to(edit_league_path league_team.league)
      end
    end

    context 'with invalid params' do
      it 'assigns the league_team as @league_team' do
        league_team = FactoryGirl.create :league_team
        put :update, { id: league_team.to_param, league_team: invalid_attributes_wo_league }
        expect(assigns(:league_team)).to eq(league_team)
      end

      it 'redirects to the edit page of the original league' do
        league_team = FactoryGirl.create :league_team
        put :update, { id: league_team.to_param, league_team: invalid_attributes_wo_league }
        expect(response).to redirect_to(edit_league_path league_team.league)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested league_team' do
      league_team = FactoryGirl.create :league_team
      expect {
        delete :destroy, { id: league_team.to_param }
      }.to change(LeagueTeam, :count).by(-1)
    end

    it 'redirects to the edit path of the league of the destroyed league_team' do
      league_team = FactoryGirl.create :league_team
      delete :destroy, { id: league_team.to_param }
      expect(response).to redirect_to(edit_league_path league_team.league)
    end
  end

end
