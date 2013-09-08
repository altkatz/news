class ColumnsController < ApplicationController

  def index
    @columns = Column.all
  end

  def show
    @columns = Column.all
    @column = Column.find(params[:id])
    @articles = @column.articles.published
  end
end
