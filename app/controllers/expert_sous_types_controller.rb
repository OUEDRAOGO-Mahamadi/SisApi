class ExpertSousTypesController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @sous_experts = ExpertSousType.all
    json_response(@sous_experts)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@sous_expert)
  end

  def delete
    @ressource=ExpertSousType.where("sous_type_expert_id= ? AND utilisateur_id= ? ",params[:sous_type_expert_id],params[:utilisateur_id]).destroy_all
    # respond_to do |format|
    #   format.json { head :no_content }
    # end
    json_response(@ressource)
  end

 
  # POST /ressources or /ressources.json
  def create
    @sous_expert = ExpertSousType.new(ressource_sous_ressource_params)

    if @sous_expert.save
      json_response(@sous_expert)
      #format.json { render :show, status: :created, location: @sous_expert }
    else
      render json: @sous_expert.errors
      
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update

    if @sous_expert.update(ressource_sous_ressource_params)
      json_response(@sous_expert)
    else
        
      render json: @sous_expert.errors
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @sous_expert.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @sous_expert = ExpertSousType.find(params[:id])
      #json_response(@sous_expert)
    end

    def expert_sous_type_params
      params.require(:expert_sous_type).permit(:sous_type_expert_id, :utilisateur_id)
    end

end
