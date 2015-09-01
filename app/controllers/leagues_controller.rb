class LeaguesController < ApplicationController
  before_action :set_league, only: [:show, :edit, :update, :destroy]
  before_action :check_create_permission, only: [:new, :create]
  before_action :check_update_permission, only: [:edit, :update]
  before_action :check_destroy_permission, only: [:destroy]

  # GET /leagues
  # GET /leagues.json
  def index
    @leagues = League.all
  end

  # GET /leagues/1
  # GET /leagues/1.json
  def show
  end

  # GET /leagues/new
  def new
    @league = League.new
  end

  # GET /leagues/1/edit
  def edit
  end

  # POST /leagues
  # POST /leagues.json
  def create
    @league = League.new(league_params)

    respond_to do |format|
      if @league.save
        format.html { redirect_to @league, notice: t('leagues.flash.create.success') }
        format.json { render :show, status: :created, location: @league }
      else
        format.html { render :new }
        format.json { render json: @league.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leagues/1
  # PATCH/PUT /leagues/1.json
  def update
    respond_to do |format|
      if @league.update(league_params)
        format.html { redirect_to @league, notice: t('leagues.flash.update.success') }
        format.json { render :show, status: :ok, location: @league }
      else
        format.html { render :edit }
        format.json { render json: @league.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leagues/1
  # DELETE /leagues/1.json
  def destroy
    @league.destroy
    respond_to do |format|
      format.html { redirect_to leagues_url, notice: t('leagues.flash.destroy.success') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league
      @league = League.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def league_params
      params.require(:league).permit(:name, :start, :end, :class_id, :iscup, :isfemale, :noreferee)
    end

    def check_create_permission
      if !(current_user_has_permission? :can_create_league)
        redirect_to league_index_path, flash: { danger: t('leagues.flash.create.permission_failure') }
      end
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
