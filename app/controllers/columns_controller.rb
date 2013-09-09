class ColumnsController < ApplicationController

  def index
    @columns = Column.includes(:articles).limit(10)
  end

  def show
    @columns = Column.limit(10)
    @column = Column.find(params[:id])
    @articles = @column.articles.published
  end
end
