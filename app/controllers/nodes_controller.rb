class NodesController < ApplicationController
  def index
    @nodes = Node.all

    respond_to do |wants|
      wants.html {}
      wants.json { render :json => @nodes.to_json }
    end
  end

  def show
    @node = Node.find(params[:id])

    respond_to do |wants|
      wants.html {}
      wants.json { render :json => @node.parameters.to_json }
    end
  end
end
