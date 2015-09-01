class TagsController < ApplicationController
  before_action :set_tag, only: [ :show ]
  def show
    @news = News.tagged_with(params[:tag], wild: true).page(params[:page]).per 10
  end

  private
    def set_tag
      @tag = params[:tag]
    end
end
