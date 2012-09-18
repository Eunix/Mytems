class SearchController < ApplicationController

  def index
    @items = Item.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end
end
