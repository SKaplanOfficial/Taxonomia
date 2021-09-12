class TaxonomiesController < ApplicationController
  def index
    @taxonomies = Taxonomy.all
  end

  def show
    @taxonomy = Taxonomy.find(params[:id])
  end

  def new
    @taxonomy = Taxonomy.new
  end

  def create
    @taxonomy = Taxonomy.new(taxonomy_params)

    if @taxonomy.save
      redirect_to @taxonomy
    else
      render :new
    end
  end

  def edit
    @taxonomy = Taxonomy.find(params[:id])
  end

  def update
    @taxonomy = Taxonomy.find(params[:id])

    if @taxonomy.update(taxonomy_params)
      redirect_to @taxonomy
    else
      render :edit
    end
  end

  def destroy
    @taxonomy = Taxonomy.find(params[:id])
    @taxonomy.destroy

    redirect_to root_path
  end

  private
    def taxonomy_params
      params.require(:taxonomy).permit(:title, :description, :author)
    end
end
