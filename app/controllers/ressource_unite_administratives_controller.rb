class RessourceUniteAdministrativesController < ApplicationController
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @ressources = RessourceUniteAdministrative.all
    json_response(@ressources)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@ressource)
  end

  def delete
    RessourceUniteAdministrative.where("unite_administrative_id= ? AND ressource_id= ? ",params[:unite_administrative_id],params[:ressource_id]).destroy_all
    respond_to do |format|
      format.json { head :no_content }
    end
    
  end

  # POST /ressources or /ressources.json
  def create
    @ressource = RessourceUniteAdministrative.new(ressource_profile_params)

    if @ressource.save
      json_response(@ressource)
      #format.json { render :show, status: :created, location: @ressource }
    else
      render json: @ressource.errors
      
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update

    if @ressource.update(ressource_profile_params)
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
      @ressource = RessourceUniteAdministrative.find(params[:id])
      #json_response(@ressource)
    end

    # Only allow a list of trusted parameters through.
    def ressource_profile_params
      params.require(:ressource_unite_administrative).permit(:ressource_id,:unite_administrative_id)
    end
end
