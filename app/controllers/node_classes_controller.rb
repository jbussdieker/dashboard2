class NodeClassesController < ApplicationController
  def index
    @node_classes = NodeClass.all
  end

  def show
    @node_class = NodeClass.find(params[:id])
  end
end
