class DynamicPagesController < ApplicationController

  def profile
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts name = params[:profile]
    p @author = User.all.where(first_name: name)
    p User.find(@author.id)

  end

end
