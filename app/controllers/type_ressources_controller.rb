class TypeRessourcesController < ApplicationController
  include Response
  before_action :set_type_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /type_ressources or /type_ressources.json
  def index
    @type_ressources = TypeRessource.all
    json_response(@type_ressources)
  end

  # GET /type_ressources/1 or /type_ressources/1.json
  def show
    json_response(@type_ressource)
  end

  # GET /type_ressources/new
  def new
    @type_ressource = TypeRessource.new
    json_response(@type_ressource)
  end

  # GET /type_ressources/1/edit
  def edit
  end

  # POST /type_ressources or /type_ressources.json
  def create
    @type_ressource = TypeRessource.new(type_ressource_params)

    respond_to do |format|
      if @type_ressource.save
       
      else
    
        format.json { render json: @type_ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_ressources/1 or /type_ressources/1.json
  def update
    respond_to do |format|
      if @type_ressource.update(type_ressource_params)
      
        format.json { render :show, status: :ok, location: @type_ressource }
      else
      
        format.json { render json: @type_ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_ressources/1 or /type_ressources/1.json
  def destroy
    @type_ressource.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_ressource
      @type_ressource = TypeRessource.find(params[:id])
      #json_response(@type_ressource)
    end

    # Only allow a list of trusted parameters through.
    def type_ressource_params
      params.require(:type_ressource).permit(:libelle,:icon, :sigle, :description)
    end
end
