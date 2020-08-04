class GossipController < ApplicationController
    def show
        @a_gossip = Gossip.find_by(title: params[:id])
    end
end
