class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  before_action :check_create_permission, only: [:new, :create]
  before_action :check_update_permission, only: [:edit, :update]
  before_action :check_destroy_permission, only: [:destroy]

  # GET /teams
  # GET /teams.json
  def index
    @league_teams = LeagueTeam.joins(:team, :league)
      .where(teams: { ishometeam: true })
      .order('leagues.start DESC', 'leagues.end DESC', 'leagues.class_id DESC', 'leagues.name ASC')
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: [t('teams.flash.create.success')] }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: [t('teams.flash.update.success')] }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: [t('teams.flash.destroy.success')] }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :ishometeam, :hometeamname, :isfemale, :class_id)
    end

    def check_create_permission
      if !(current_user && current_user.has_user_role_permission?(:can_create_team))
        redirect_to teams_index_path, flash: { danger: [t('teams.flash.create.permission_failure')] }
      end
    end

    def check_update_permission
      if !(current_user && current_user.has_user_role_permission?(:can_update_team))
        redirect_to @team, flash: { danger: [t('teams.flash.update.permission_failure')] }
      end
    end

    def check_destroy_permission
      if !(current_user && current_user.has_user_role_permission?(:can_destroy_team))
        redirect_to @team, flash: { danger: [t('teams.flash.destroy.permission_failure')] }
      end
    end
end
