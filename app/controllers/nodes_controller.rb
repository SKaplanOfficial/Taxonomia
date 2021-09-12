class NodesController < ApplicationController
before_action :find_expandable

    def new
        @node = Node.new
    end

    def edit
        @node = @expandable.nodes.find(params[:id])
    end
    
    def create
        logger.debug("//////")
        logger.debug(node_params)
        @node = @expandable.nodes.create(node_params)
        if @node.save
            redirect_back fallback_location: root_path, notice: 'Node added!'
        else
            redirect_back fallback_location: root_path, notice: "Error while creating node!"
            logger.debug("----")
            logger.debug(@node.errors.full_messages)
        end
    end

    def update
        @node = Node.find(params[:id])
    
        if @node.update(node_params)
            redirect_back fallback_location: root_path
        else
          render :edit
        end
    end

    def to_json
        {
          :nodes => expandable.nodes.collect { |n| n.to_json }
        }
    end

    def destroy
        @node = Node.find(params[:id])
        @node.destroy
        redirect_back fallback_location: root_path, notice: 'Node added!'
    end

    private
        def node_params
            params.fetch(:node, {}).permit(:title, :body, :taxonomy_id, :node_id, :startDate, :endDate, :kingdom, :phylum, :clades)
        end

        def find_expandable
            @expandable = Node.find_by_id(node_params[:node_id]) if node_params[:node_id]
            @expandable = Taxonomy.find_by_id(node_params[:taxonomy_id]) if node_params[:taxonomy_id]
        end
end
