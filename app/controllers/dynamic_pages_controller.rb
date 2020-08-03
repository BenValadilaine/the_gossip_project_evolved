class DynamicPagesController < ApplicationController

  def profile
    @author = User.find_by(first_name: params[:profile])
  end

end
