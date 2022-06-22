class EvenementsController < ApplicationController
  include Response
  before_action :set_evenement, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /evenements or /evenements.json
  def index
    @evenements = Evenement.all
    json_response(@evenements)
  end

  # GET /evenements/1 or /evenements/1.json
  def show
    json_response(@evenement)
  end

  #get event by profile
  def getEvenementByProfile
    @events = Evenement.joins(:evenement_profiles).where("evenement_profiles.evenement_id=evenements.id AND evenement_profiles.profile_id = ?",params[:profile_id])
    json_response(@events)
  end

  #search ressource by options
def searchEvenement
  @evenement = Evenement.where(nil) 
  @evenement = @evenement.filter_profile(params[:profile_id]) if params[:profile_id].present?
  @evenement = @evenement.filter_type_evenement(params[:type_evenement]) if params[:type_evenement].present?
  @evenement = @evenement.filter_langue(params[:langue]) if params[:langue].present?
  @evenement = @evenement.filter_mot_cle(params[:mot_cle]) if params[:mot_cle].present?
  @evenement = @evenement.filter_pays(params[:pays]) if params[:pays].present?
  @evenement = @evenement.filter_systeme_irrigue(params[:systeme_irrigue]) if params[:systeme_irrigue].present?
  @evenement = @evenement.filter_thematique(params[:thematique]) if params[:thematique].present?
  @evenement = @evenement.filter_unite_administrative(params[:unite_administrative]) if params[:unite_administrative].present?
  json_response(@evenement)
end

  # GET /evenements/new
  def new
    @evenement = Evenement.new
    json_response(@evenement)
  end

  # GET /evenements/1/edit
  def edit
  end

  # POST /evenements or /evenements.json
  def create
    @evenement = Evenement.new(evenement_params)

    if @evenement.save
      #format.html { redirect_to @evenement, notice: "Evenement was successfully created." }
      json_response(@evenement)
    else
      #format.html { render :new, status: :unprocessable_entity }
      json_response(@evenement.errors)
    end

    
  end

  # PATCH/PUT /evenements/1 or /evenements/1.json
  def update

    if @evenement.update(evenement_params)
      #format.html { redirect_to @evenement, notice: "Evenement was successfully updated." }
      json_response(@evenement)
    else
      #format.html { render :edit, status: :unprocessable_entity }
      json_response(@evenement.errors)
    end
   
  end

  def getEvenementByUser
    @evenements = Evenement.where("user_id= ?",params[:user_id])
    json_response(@evenements)
  end

  def delete
    EvenementMotCle.where("mot_cle_id= ? AND evenement_id= ? ",params[:mot_cle_id],params[:evenement_id]).destroy_all
    respond_to do |format|
      format.json { head :no_content }
    end
    
  end

  # DELETE /evenements/1 or /evenements/1.json
  def destroy
    @evenement.destroy
    render json:{}  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evenement
      @evenement = Evenement.find(params[:id])
      #json_response(@evenement)
    end

    # Only allow a list of trusted parameters through.
    def evenement_params
      params.require(:evenement).permit(:libelle,
                                        :date_debut, 
                                        :date_fin, 
                                        :heure_debut, 
                                        :heure_fin, 
                                        :lieu, 
                                        :user_id,
                                        :organisateur, 
                                        :objectif, 
                                        :cible, 
                                        :description, 
                                        :url, 
                                        :type_evenement_id,
                                        evenement_unite_administratives_attributes: [:id, :evenement_id, :unite_administrative_id, :_destroy],
                                        evenement_profiles_attributes: [:id, :evenement_id, :profile_id, :_destroy],
                                        evenement_systeme_irrigues_attributes: [:id, :evenement_id, :type_systeme_irrigue_id, :_destroy],
                                        evenement_thematiques_attributes: [:id, :evenement_id, :thematique_id, :_destroy],
                                        evenement_langues_attributes: [:id, :evenement_id, :langue_id, :_destroy],
                                        evenement_pays_attributes: [:id, :evenement_id, :pay_id, :_destroy],
                                        evenement_mot_cles_attributes: [:id, :evenement_id, :mot_cle_id, :_destroy],
                                        )
    end
end
