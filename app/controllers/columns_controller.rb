class ColumnsController < ApplicationController

  def index
    @columns = Column.includes(:articles)
    @articles = @columns.map(&:articles).flatten.uniq
  end

  def show
    @columns = Column.limit(10)
    @column = Column.find(params[:id])
    @articles = @column.articles.published
  end
end
