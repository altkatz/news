class Admin::ArticlesController < ApplicationController

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
    params.require(:user).permit!
  end
end
