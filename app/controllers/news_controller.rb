class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]
  before_action :check_create_permission, only: [:new, :create]
  before_action :check_edit_permission, only: [:edit, :update]
  before_action :check_delete_permission, only: [:destroy]

  # GET /news
  # GET /news.json
  def index
    @news = News.all.page(params[:page]).per 2
  end

  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news
  # POST /news.json
  def create
    @news = News.new(news_params.merge(author: current_user))

    respond_to do |format|
      if @news.save
        format.html { redirect_to @news, notice: 'Neue Nachricht erfolgreich erstellt.' }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params.merge(editor: current_user, edit_count: (@news.edit_count + 1)))
        format.html { redirect_to @news, notice: 'Nachricht erfolgreich bearbeitet.' }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_index_url, notice: 'Nachricht erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title, :subtitle, :abstract, :text)
    end

    def check_create_permission
      if !(current_user and current_user.has_user_role_permission? :can_create_news)
        redirect_to news_index_path, flash: { danger: 'Sie sind nicht berechtigt neue Nachrichten zu erstellen!' }
      end
    end

    def check_edit_permission
      if !(current_user and (
          current_user.eql? @news.author or
          current_user.has_user_role_permission? :can_edit_news))
        redirect_to @news, flash: { danger: 'Sie sind nicht berechtigt diese Nachricht zu bearbeiten!' }
      end
    end

    def check_delete_permission
      if !(current_user and current_user.has_user_role_permission? :can_delete_news)
        redirect_to @news, flash: { danger: 'Sie sind nicht berechtigt diese Nachricht zu löschen!' }
      end
    end
end
