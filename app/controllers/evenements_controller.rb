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

  # DELETE /evenements/1 or /evenements/1.json
  def destroy
    @evenement.destroy
    respond_to do |format|
      #format.html { redirect_to evenements_url, notice: "Evenement was successfully destroyed." }
      format.json { head :no_content }
    end
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
                                        )
    end
end
