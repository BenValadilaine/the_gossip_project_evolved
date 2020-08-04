class GossipController < ApplicationController
    def show
        @a_gossip = Gossip.find_by(title: params[:id])
    end


    def create
        @gossip = Gossip.new(title:"gossip_title", content: "gossip_content", user: User.last) 
        
        if @gossip.save 
            
        else
            # sinon, il render la view new (qui est celle sur laquelle on est déjà)
        end

    end
end
