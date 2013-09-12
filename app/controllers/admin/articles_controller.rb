class Admin::ArticlesController < ApplicationController
  before_filter :authorize_admin
  layout 'admin/application'
  def index
    @articles = Article.all
  end

  def show
    @article = Account.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
    p @article.columns
    if @article
      render 'admin/articles/edit'
    else
      halt 404
    end

  end

  def create
    @user = Article.new(article_params)
  end


  private

  def article_params
    params.require(:article).permit!
  end
end
