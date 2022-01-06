class RessourceLocalitesController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @ressources = RessourceLocalite.all
    json_response(@ressources)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    
  end

  # POST /ressources or /ressources.json
  def create
    @ressource = RessourceLocalite.new(ressource_localite_params)

    if @ressource.save
      json_response(@ressource)
      #format.json { render :show, status: :created, location: @ressource }
    else
      render json: @ressource.errors
      
    end
  end

  def delete
    @ressource=RessourceLocalite.where("localite_id= ? AND ressource_id= ? ",params[:localite_id],params[:ressource_id]).destroy
    # respond_to do |format|
    #   format.json { head :no_content }
    # end
    json_response(@ressource)
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update

    if @ressource.update(ressource_localite_params)
      json_response(@ressource)
    else
        
      render json: @ressource.errors
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @ressource.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @ressource = RessourceLocalite.find(params[:id])
      #json_response(@ressource)
    end

    def ressource_localite_params
      params.require(:ressource_localite).permit(:ressource_id, :sous_localite_id)
    end

end
