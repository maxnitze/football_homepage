class UserRolePermissionsController < ApplicationController
  before_action :set_user_role_permission, only: [:show, :edit, :update, :destroy]

  # GET /user_role_permissions
  # GET /user_role_permissions.json
  def index
    @user_role_permissions = UserRolePermission.all
  end

  # GET /user_role_permissions/1
  # GET /user_role_permissions/1.json
  def show
  end

  # GET /user_role_permissions/new
  def new
    @user_role_permission = UserRolePermission.new
  end

  # GET /user_role_permissions/1/edit
  def edit
  end

  # POST /user_role_permissions
  # POST /user_role_permissions.json
  def create
    @user_role_permission = UserRolePermission.new(user_role_permission_params)

    respond_to do |format|
      if @user_role_permission.save
        format.html { redirect_to @user_role_permission, notice: [ t('user_role_permissions.flash.create.success') ] }
        format.json { render :show, status: :created, location: @user_role_permission }
      else
        format.html { render :new }
        format.json { render json: @user_role_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_role_permissions/1
  # PATCH/PUT /user_role_permissions/1.json
  def update
    respond_to do |format|
      if @user_role_permission.update(user_role_permission_params)
        format.html { redirect_to @user_role_permission, notice: [ t('user_role_permissions.flash.update.success') ] }
        format.json { render :show, status: :ok, location: @user_role_permission }
      else
        format.html { render :edit }
        format.json { render json: @user_role_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_role_permissions/1
  # DELETE /user_role_permissions/1.json
  def destroy
    @user_role_permission.destroy
    respond_to do |format|
      format.html { redirect_to user_role_permissions_url, notice: [ t('user_role_permissions.flash.destroy.success') ] }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_role_permission
      @user_role_permission = UserRolePermission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_role_permission_params
      params.require(:user_role_permission).permit(:symbol, :description)
    end
end
