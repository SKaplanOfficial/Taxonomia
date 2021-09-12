class HomeController < ApplicationController
  def index
    @nodes = Node.all
    @taxonomies = Taxonomy.all
  end
end
