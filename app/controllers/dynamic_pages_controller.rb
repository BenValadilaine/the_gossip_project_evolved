class DynamicPagesController < ApplicationController

  def profile
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$*******"
    p params[:profile]
    @author = User.find_by(first_name: params[:profile])
  end

  def gossip
    puts "$$****************************************************"
    puts params[:gossip]
    @a_gossip = Gossip.find_by(title: params[:gossip])
  end
end
