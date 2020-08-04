class GossipsController < ApplicationController
    def show
        @a_gossip = Gossip.find_by(title: params[:gossip])
    end

    def index
        
    end

end
