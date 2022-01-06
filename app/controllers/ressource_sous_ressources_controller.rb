class RessourceSousRessourcesController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @sous_ressources = RessourceSousRessource.all
    json_response(@ressources)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@sous_ressource)
  end

  def delete
    @ressource=RessourceSousRessource.where("sous_type_ressource_id= ? AND ressource_id= ? ",params[:sous_type_ressource_id],params[:ressource_id]).destroy_all
    # respond_to do |format|
    #   format.json { head :no_content }
    # end
    json_response(@ressource)
  end

 
  # POST /ressources or /ressources.json
  def create
    @sous_ressource = RessourceSousRessource.new(ressource_sous_ressource_params)

    if @sous_ressource.save
      json_response(@sous_ressource)
      #format.json { render :show, status: :created, location: @sous_ressource }
    else
      render json: @sous_ressource.errors
      
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update

    if @sous_ressource.update(ressource_sous_ressource_params)
      json_response(@sous_ressource)
    else
        
      render json: @sous_ressource.errors
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @sous_ressource.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @sous_ressource = RessourceSousRessource.find(params[:id])
      #json_response(@sous_ressource)
    end

    def ressource_sous_ressource_params
      params.require(:ressource_sous_ressource).permit(:ressource_id, :sous_type_ressource_id)
    end

end
