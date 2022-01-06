class RessourceThematiquesController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @ressources = RessourceThematique.all
    json_response(@ressources)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@ressources)
  end

  def delete
    @ressource=RessourceThematique.where("thematique_id= ? AND ressource_id= ? ",params[:thematique_id],params[:ressource_id]).destroy_all
    # respond_to do |format|
    #   format.json { head :no_content }
    # end
    json_response(@ressource)
  end

  # POST /ressources or /ressources.json
  def create
    @ressource = RessourceThematique.new(ressource_thematique_params)

    if @ressource.save
      json_response(@ressource)
      #format.json { render :show, status: :created, location: @ressource }
    else
      render json: @ressource.errors
      
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update

    if @ressource.update(ressource_thematique_params)
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
      @ressource = RessourceThematique.find(params[:id])
      #json_response(@ressource)
    end

    def ressource_thematique_params
      params.require(:ressource_thematique).permit(:ressource_id, :thematique_id)
    end

end
