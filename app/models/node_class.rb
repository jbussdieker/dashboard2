class NodeClass < ActiveRecord::Base
  has_many :node_class_memberships
  has_many :nodes, :through => :node_class_memberships
  has_many :parameters, :as => :parameterable
end
