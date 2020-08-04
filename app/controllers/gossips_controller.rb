class GossipsController < ApplicationController
  def show
    @a_gossip = Gossip.find_by(title: params[:id])
  end

  def new

  end

  def create
    @gossip = Gossip.new(title: params[:gossip_title], content: params[:gossip_content], user: User.last)
    if @gossip.save
      redirect_to :controller => "landing_page", :action => "index", :notice => "gossip_saved"
    else
      @error = true
      render :action => "new"
    end

  end
end
