class NodeGroupsController < ApplicationController
  def index
    @node_groups = NodeGroup.all
  end

  def show
    @node_group = NodeGroup.find(params[:id])
  end
end
