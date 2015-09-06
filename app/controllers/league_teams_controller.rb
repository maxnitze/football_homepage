class LeagueTeamsController < ApplicationController
  before_action :set_league_team, only: [:update, :destroy]
  before_action :check_update_permission, only: [:create, :update]
  before_action :check_destroy_permission, only: [:destroy]

  # POST /league_teams
  # POST /league_teams.json
  def create
    @league_team = LeagueTeam.new(league_team_params)

    respond_to do |format|
      if @league_team.save
        format.html { redirect_to edit_league_path(@league_team.league), success: t('league_teams.flash.create.success') }
        format.json { render :show, status: :created, location: @league_team }
      else
        format.html { redirect_to edit_league_path(@league_team.league), danger: t('league_teams.flash.create.failure', errors: @league_team.errors) }
        format.json { render json: @league_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /league_teams/1
  # PATCH/PUT /league_teams/1.json
  def update
    respond_to do |format|
      if @league_team.update(league_team_params)
        format.html { redirect_to edit_league_path(@league_team.league), success: t('league_teams.flash.update.success') }
        format.json { render :show, status: :ok, location: @league_team }
      else
        format.html { redirect_to edit_league_path(@league_team.league), danger: t('league_teams.flash.update.failure', errors: @league_team.errors.full_messages.join('; ')) }
        format.json { render json: @league_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /league_teams/1
  # DELETE /league_teams/1.json
  def destroy
    @league_team.destroy
    respond_to do |format|
      format.html { redirect_to edit_league_path(@league_team.league), success: t('league_teams.flash.destroy.success') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_team
      @league_team = LeagueTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def league_team_params
      params.require(:league_team).permit(:league_id, :team_id, :unsubscribed, :squadleagueteam_id)
    end

    def check_update_permission
      if !(current_user_has_permission? :can_update_league)
        redirect_to @league, flash: { danger: t('leagues.flash.update.permission_failure') }
      end
    end

    def check_destroy_permission
      if !(current_user_has_permission? :can_destroy_league)
        redirect_to @league, flash: { danger: t('leagues.flash.destroy.permission_failure') }
      end
    end
end
