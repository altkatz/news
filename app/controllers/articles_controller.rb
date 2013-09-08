class ArticlesController < ApplicationController

  def index
    @columns = Column.all
    @column = Column.find_by(name: params[:column_name])
    @articles = @column.articles.published
  end

  def show
    @article = Article.find(params[:id])
  end
end
