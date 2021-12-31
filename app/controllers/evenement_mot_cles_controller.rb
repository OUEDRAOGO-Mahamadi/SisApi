class EvenementMotClesController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @ressources = EvenementMotCle.all
    json_response(@ressources)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@ressources)
  end

  # POST /ressources or /ressources.json
  def create
    @ressource = EvenementMotCle.new(evenement_mot_cle_params)

    if @ressource.save
      json_response(@ressource)
      #format.json { render :show, status: :created, location: @ressource }
    else
      render json: @ressource.errors
      
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update

    if @ressource.update(evenement_mot_cle_params)
      json_response(@ressource)
    else
        
      render json: @ressource.errors
    end
  end

  def delete
    EvenementMotCle.where("mot_cle_id= ? AND evenement_id= ? ",params[:mot_cle_id],params[:evenement_id]).destroy_all
    respond_to do |format|
      format.json { head :no_content }
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
      @ressource = EvenementMotCle.find(params[:id])
      #json_response(@ressource)
    end

    def evenement_mot_cle_params
      params.require(:evenement_mot_cle).permit(:mot_cle_id, :evenement_id)
    end

end
