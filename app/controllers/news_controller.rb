class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]
  before_action :set_newstext, only: [:show]
  before_action :check_create_permission, only: [:new, :create]
  before_action :check_update_permission, only: [:edit, :update]
  before_action :check_destroy_permission, only: [:destroy]

  # GET /news
  # GET /news.json
  def index
    @news = News.all.page(params[:page]).per 10
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
    @news = News.new(author: current_user)

    respond_to do |format|
      successfully_created = false
      errors = []

      if @news.save
        I18n.available_locales.map { |lang|
          Newstext.new((newstext_params lang).merge(news: @news, language: lang))
        }.each do |newstext|
          if !newstext.save
            flash_message :danger, "#{t('newstext.flash.create.failure', lang: t("lang.#{newstext.language}"))} #{newstext.errors.full_messages.join ' '}"
          else
            successfully_created = true
          end
        end
      end

      if successfully_created
        format.html { redirect_to @news, notice: [t('news.flash.create.success')] }
        format.json { render :show, status: :created, location: @news }
      else
        @news.destroy

        flash_message :danger, t('news.flash.create.failure')

        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json
  def update
    respond_to do |format|
      newstexts = I18n.available_locales.map { |lang|
        newstext = Newstext.find_or_create_by(news: @news, language: lang)
        newstext.assign_attributes(newstext_params lang)
        newstext
      }

      if @news.update(news_params.merge(editor: current_user, edit_count: (@news.edit_count + 1)))
        newstexts.each do |newstext|
            flash_message :danger, t('newstext.flash.update.failed', lang: t("lang.#{newstext.language}")) if !newstext.save
        end

        format.html { redirect_to @news, notice: [t('news.flash.update.success')] }
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
      format.html { redirect_to news_index_url, notice: [t('news.flash.destroy.success')] }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    def set_newstext
      @newstext = @news.current_newstext
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:bootsy_image_gallery_id, :tag_list)
    end

    def newstext_params lang
      remove_lang_suffix params.require(:newstext).permit("title_#{lang}", "subtitle_#{lang}", "abstract_#{lang}", "text_#{lang}"), lang
    end

    def remove_lang_suffix hash, lang
      hash.keys.each_with_object({}) { |k, p|
        p[k.chomp "_#{lang.to_s}"] = hash[k]
      }
    end

    def check_create_permission
      if !(current_user && current_user.has_user_role_permission?(:can_create_news))
        redirect_to news_index_path, flash: { danger: [t('news.flash.create.permission_failure')] }
      end
    end

    def check_update_permission
      if !(current_user && (
          current_user.eql? @news.author ||
          current_user.has_user_role_permission?(:can_update_news)))
        redirect_to @news, flash: { danger: [t('news.flash.update.permission_failure')] }
      end
    end

    def check_destroy_permission
      if !(current_user && current_user.has_user_role_permission?(:can_destroy_news))
        redirect_to @news, flash: { danger: [t('news.flash.destroy.permission_failure')] }
      end
    end
end
