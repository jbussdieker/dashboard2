class NodeGroup < ActiveRecord::Base
  has_many :node_group_memberships
  has_many :nodes, :through => :node_group_memberships
  has_many :parameters, :as => :parameterable
end
