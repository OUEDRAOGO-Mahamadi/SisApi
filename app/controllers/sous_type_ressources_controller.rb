class SousTypeRessourcesController < InheritedResources::Base

  include Response
  before_action :set_type_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /type_ressources or /type_ressources.json
  def index
    @sous_type_ressources = SousTypeRessource.all
    json_response(@sous_type_ressources)
  end

  # GET /type_ressources/1 or /type_ressources/1.json
  def show
    json_response(@sous_type_ressource)
  end

  # GET /type_ressources/new
  def new
    @sous_type_ressource = SousTypeRessource.new
    json_response(@sous_type_ressource)
  end

  # GET /type_ressources/1/edit
  def edit
  end

  # POST /type_ressources or /type_ressources.json
  def create
    @sous_type_ressource = SousTypeRessource.new(type_ressource_params)

    respond_to do |format|
      if @sous_type_ressource.save
        format.json { render :show, status: :created, location: @sous_type_ressource }
       
      else
       
        format.json { render json: @sous_type_ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_ressources/1 or /type_ressources/1.json
  def update
    respond_to do |format|
      if @sous_type_ressource.update(type_ressource_params)
        format.json { render :show, status: :ok, location: @sous_type_ressource }
      else
        format.json { render json: @sous_type_ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_ressources/1 or /type_ressources/1.json
  def destroy
    @sous_type_ressource.destroy
    respond_to do |format|
      format.html { redirect_to type_ressources_url, notice: "Type ressource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
   
    def set_type_ressource
      @sous_type_ressource = SousTypeRessource.find(params[:id])
   
    end

    # Only allow a list of trusted parameters through.
    def type_ressource_params
      params.require(:sous_type_ressource).permit(:libelle, :sigle, :description)
    end

end
