class Gossip < ApplicationRecord
  belongs_to :user
  has_many :join_table_gossip_tags
  has_many :tag, through: :join_table_gossip_tags
end
