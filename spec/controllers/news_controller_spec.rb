# spec/controllers/news_controller_spec.rb
require 'rails_helper'

RSpec.describe NewsController, type: :controller do
  login_user :as_super_editor

  it 'should have a logged in user with super editor permissions' do
    expect(subject.current_user).to_not eq(nil)
    expect(subject.current_user.has_user_role? :super_editor).to be true
  end

  let(:valid_news_attributes) {
    FactoryGirl.attributes_for :news, author: nil
  }

  let(:valid_newstext_attributes) {
    I18n.available_locales.map { |locale|
      FactoryGirl
        .attributes_for(:newstext, language: locale.to_s)
        .transform_keys { |key| "#{key}_#{locale}" }
    }.reduce({}, :merge)
  }

  let(:invalid_newstext_attributes) {
    I18n.available_locales.map { |locale|
      FactoryGirl
        .attributes_for(:newstext, language: locale, title: nil, text: nil)
        .transform_keys { |key| "#{key}_#{locale}" }
    }.reduce({}, :merge)
  }

  describe 'GET index' do
    it 'assigns all news as @news' do
      news = FactoryGirl.create :news
      get :index
      expect(assigns(:news)).to eq([news])
    end
  end

  describe 'GET show' do
    it 'assigns the requested news as @news' do
      news = FactoryGirl.create :news
      get :show, { id: news.to_param }
      expect(assigns(:news)).to eq(news)
    end
  end

  describe 'GET new' do
    it 'assigns a new news as @news' do
      get :new
      expect(assigns(:news)).to be_a_new(News)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested news as @news' do
      news = FactoryGirl.create :news
      get :edit, { id: news.to_param }
      expect(assigns(:news)).to eq(news)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new News' do
        expect {
          post :create, { news: valid_news_attributes, newstext: valid_newstext_attributes }
        }.to change(News, :count).by(1)
      end

      it 'assigns a newly created news as @news' do
        post :create, { news: valid_news_attributes, newstext: valid_newstext_attributes }
        expect(assigns(:news)).to be_a(News)
        expect(assigns(:news)).to be_persisted
      end

      it 'redirects to the created news' do
        post :create, { news: valid_news_attributes, newstext: valid_newstext_attributes }
        expect(response).to redirect_to(News.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved news as @news' do
        post :create, { news: valid_news_attributes, newstext: invalid_newstext_attributes }
        expect(assigns(:news)).to be_a_new(News)
      end

      it "re-renders the 'new' template" do
        post :create, { news: valid_news_attributes, newstext: invalid_newstext_attributes }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      it 'updates the requested news' do
        news = FactoryGirl.create :news_with_newstexts
        put :update, { id: news.to_param, news: valid_news_attributes, newstext: valid_newstext_attributes }
        news.reload
        I18n.available_locales.each do |locale|
          newstext = news.newstext_for_locale locale
          valid_newstext_attributes
            .select { |key, _| key.match(/_#{locale}$/) }
            .each do |key, val|
              expect(newstext[key.chomp "_#{locale}"].eql?(val)).to be true
          end
        end
      end

      it 'assigns the requested news as @news' do
        news = FactoryGirl.create :news
        put :update, { id: news.to_param, news: valid_news_attributes, newstext: valid_newstext_attributes }
        expect(assigns(:news)).to eq(news)
      end

      it 'redirects to the news' do
        news = FactoryGirl.create :news
        put :update, { id: news.to_param, news: valid_news_attributes, newstext: valid_newstext_attributes }
        expect(response).to redirect_to(news)
      end
    end

    describe 'with invalid params' do
      it 'assigns the news as @news' do
        news = FactoryGirl.create :news
        put :update, { id: news.to_param, news: valid_news_attributes, newstext: invalid_newstext_attributes }
        expect(assigns(:news)).to eq(news)
      end

      it "re-renders the 'edit' template" do
        news = FactoryGirl.create :news
        put :update, { id: news.to_param, news: valid_news_attributes, newstext: invalid_newstext_attributes }
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested news' do
      news = FactoryGirl.create :news
      expect {
        delete :destroy, { id: news.to_param }
      }.to change(News, :count).by(-1)
    end

    it 'redirects to the news list' do
      news = FactoryGirl.create :news
      delete :destroy, { id: news.to_param }
      expect(response).to redirect_to(news_index_url)
    end
  end

end
