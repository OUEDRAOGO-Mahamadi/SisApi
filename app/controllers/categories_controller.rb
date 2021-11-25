class CategoriesController < ApplicationController
  include Response
  before_action :set_category, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /categories or /categories.json
  def index
    @categories = Categorie.all
    json_response(@categories)
  end

  # GET /categories/1 or /categories/1.json
  def show
    json_response(@categorie)
  end

  # GET /categories/new
  def new
    @categorie = Categorie.new
    json_response(@categorie)
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories or /categories.json
  def create
    @category = Categorie.new(category_params)

    respond_to do |format|
      if @category.save
        format.json { render :show, status: :created, location: @category }
      else
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
      
        format.json { render :show, status: :ok, location: @category }
      else
       
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Categorie.find(params[:id])
     # json_response(@category)
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:libelle, :description)
    end
end
