class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    halt 404 if @article.status != "published"
  end
end
