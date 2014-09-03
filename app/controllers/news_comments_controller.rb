class NewsCommentsController < ApplicationController
  before_action :set_news_comment, only: [:show, :edit, :update, :destroy]

  # GET /news_comments
  # GET /news_comments.json
  def index
    @news_comments = NewsComment.all
  end

  # GET /news_comments/1
  # GET /news_comments/1.json
  def show
  end

  # GET /news_comments/new
  def new
    @news_comment = NewsComment.new
  end

  # GET /news_comments/1/edit
  def edit
  end

  # POST /news_comments
  # POST /news_comments.json
  def create
    @news_comment = NewsComment.new(news_comment_params)

    respond_to do |format|
      if @news_comment.save
        format.html { redirect_to @news_comment, notice: 'News comment was successfully created.' }
        format.json { render :show, status: :created, location: @news_comment }
      else
        format.html { render :new }
        format.json { render json: @news_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_comments/1
  # PATCH/PUT /news_comments/1.json
  def update
    respond_to do |format|
      if @news_comment.update(news_comment_params)
        format.html { redirect_to @news_comment, notice: 'News comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_comment }
      else
        format.html { render :edit }
        format.json { render json: @news_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_comments/1
  # DELETE /news_comments/1.json
  def destroy
    @news_comment.destroy
    respond_to do |format|
      format.html { redirect_to news_comments_url, notice: 'News comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_comment
      @news_comment = NewsComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_comment_params
      params.require(:news_comment).permit(:news_id, :user_id, :name, :email, :created, :text)
    end
end
