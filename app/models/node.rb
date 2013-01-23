class Node < ActiveRecord::Base
  attr_accessible :name
  default_scope order('name ASC')

  has_many :reports
  has_many :node_group_memberships
  has_many :node_groups, :through => :node_group_memberships
  has_many :node_class_memberships
  has_many :node_classes, :through => :node_class_memberships
  has_many :parameters, :as => :parameterable

  def classes
    node_classes
  end

  def groups
    node_groups
  end
end
