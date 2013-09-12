class ColumnsController < ApplicationController

  def index
    @columns = Column.includes(:articles)
    @articles = @columns.map(&:articles).map(&:published).flatten.uniq
  end

  def show
    @columns = Column.limit(10)
    @column = Column.find(params[:id])
    @articles = @column.articles.published
  end
end
