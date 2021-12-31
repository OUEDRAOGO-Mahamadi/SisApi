class EvenementSystemeIrriguesController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @ressources = EvenementSystemeIrrigue.all
    json_response(@ressources)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@ressources)
  end

  def delete
    EvenementSystemeIrrigue.where("type_systeme_irrigue_id= ? AND evenement_id= ? ",params[:type_systeme_irrigue_id],params[:evenement_id]).destroy_all
    respond_to do |format|
      format.json { head :no_content }
    end
    
  end

  # POST /ressources or /ressources.json
  def create
    @ressource = EvenementSystemeIrrigue.new(evenement_systeme_irrigue_params)

    if @ressource.save
      json_response(@ressource)
      #format.json { render :show, status: :created, location: @ressource }
    else
      render json: @ressource.errors
      
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update

    if @ressource.update(evenement_systeme_irrigue_params)
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
      @ressource = EvenementSystemeIrrigue.find(params[:id])
      #json_response(@ressource)
    end

    def evenement_systeme_irrigue_params
      params.require(:evenement_systeme_irrigue).permit(:evenement_id, :type_systeme_irrigue_id)
    end

end
