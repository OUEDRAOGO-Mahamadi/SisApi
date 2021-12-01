class RessourceAuteursController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @ressources = RessourceAuteur.all
    json_response(@ressources)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    
  end

  # POST /ressources or /ressources.json
  def create
    @ressource = RessourceAuteur.new(ressource_auteur_params)

    if @ressource.save
      json_response(@ressource)
      #format.json { render :show, status: :created, location: @ressource }
    else
      render json: @ressource.errors
      
    end
  end

  def delete
    RessourceAuteur.where("auteur_id= ? AND ressource_id= ? ",params[:auteur_id],params[:ressource_id]).destroy_all
    respond_to do |format|
      format.json { head :no_content }
    end
    
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update

    if @ressource.update(ressource_auteur_params)
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
      @ressource = RessourceAuteur.find(params[:id])
      #json_response(@ressource)
    end
    def ressource_auteur_params
      params.require(:ressource_auteur).permit(:auteur_id, :ressource_id)
    end

end
