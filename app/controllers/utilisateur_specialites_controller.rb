class UtilisateurSpecialitesController < InheritedResources::Base

  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @ressources = UtilisateurSpecialite.all
    json_response(@ressources)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@ressource)
  end
  def delete
    UtilisateurSpecialite.where("specialite_id= ? AND utilisateur_id= ? ",params[:specialite_id],params[:utilisateur_id]).destroy_all
    respond_to do |format|
      format.json { head :no_content }
    end
    
  end
  # POST /ressources or /ressources.json
  def create
    @ressource = UtilisateurSpecialite.new(utilisateur_specialite_params)

    if @ressource.save
      json_response(@ressource)
      #format.json { render :show, status: :created, location: @ressource }
    else
      render json: @ressource.errors
      
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update

    if @ressource.update(utilisateur_specialite_params)
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
    def set_ressource
      @ressource = UtilisateurSpecialite.find(params[:id])
      #json_response(@ressource)
    end

    def utilisateur_specialite_params
      params.require(:utilisateur_specialite).permit(:utilisateur_id, :specialite_id)
    end

end
