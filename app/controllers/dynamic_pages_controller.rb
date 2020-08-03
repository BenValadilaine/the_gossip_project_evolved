class DynamicPagesController < ApplicationController

  def show
    @author = params[:author_id]
  end

end
