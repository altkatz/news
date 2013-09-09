class Admin::ArticlesController < ApplicationController
  before_filter :authorize_admin
  layout 'admin/application'
  def index
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @user = Article.new(article_params)
  end


  private

  def article_params
    params.require(:article).permit!
  end
end
