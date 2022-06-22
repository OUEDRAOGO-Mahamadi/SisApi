class UtilisateursController < ApplicationController
  include Response
  before_action :set_utilisateur, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /utilisateurs or /utilisateurs.json
  def index
    @utilisateurs = Utilisateur.all
    json_response(@utilisateurs)
  end

  def login
    @utilisateurs=Utilisateur.where("email= ? AND password= ? ",params[:email],params[:password])
    
    json_response(@utilisateurs)
  end

  # GET /utilisateurs/1 or /utilisateurs/1.json
  def show
    json_response(@utilisateur)
  end

  # GET /utilisateurs/new
  def new
    @utilisateur = Utilisateur.new
    json_response(@utilisateur)
  end
  def getExpertByProfile
    @experts = Utilisateur.where("fonction = 'EXPERT' AND profile_id = ?",params[:profile_id])
    json_response(@experts)
  end

    #search expeert by options
def searchExpert
  @utilisateur = Utilisateur.where("fonction = 'EXPERT' ") 
  @utilisateur = @utilisateur.filter_profile(params[:profile_id]) if params[:profile_id].present?
  @utilisateur = @utilisateur.filter_type_expert(params[:type_expert]) if params[:type_expert].present?
  @utilisateur = @utilisateur.filter_langue(params[:langue]) if params[:langue].present?
  @utilisateur = @utilisateur.filter_pays(params[:pays]) if params[:pays].present?
  @utilisateur = @utilisateur.filter_systeme_irrigue(params[:systeme_irrigue]) if params[:systeme_irrigue].present?
  @utilisateur = @utilisateur.filter_thematique(params[:thematique]) if params[:thematique].present?
  
  json_response(@utilisateur)
end

  # GET /utilisateurs/1/edit
  def edit
  end

  # POST /utilisateurs or /utilisateurs.json
  def create
    @utilisateur = Utilisateur.new(utilisateur_params)

    respond_to do |format|
      if @utilisateur.save
        
        format.json { render :show, status: :created, location: @utilisateur }
      else
        
        format.json { render json: @utilisateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utilisateurs/1 or /utilisateurs/1.json
  def update
    respond_to do |format|
      if @utilisateur.update(utilisateur_params)
       
        format.json { render :show, status: :ok, location: @utilisateur }
      else
        
        format.json { render json: @utilisateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utilisateurs/1 or /utilisateurs/1.json
  def destroy
    @utilisateur.destroy
    render json:{}  
      # format.json { head :no_content }
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utilisateur
      @utilisateur = Utilisateur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def utilisateur_params
      params.require(:utilisateur).permit(:telephone,
                                          :email,
                                          :adresse,
                                          :nom, 
                                          :prenom, 
                                          :fonction, 
                                          :created_at,
                                          :password, 
                                          :status, 
                                          :structure_id, 
                                          :categorie_id, 
                                          :profile_id,
                                          :type_expert_id,
                                          utilisateur_langues_attributes: [:id, :utilisateur_id, :langue_id, :_destroy],
                                          utilisateur_pays_attributes: [:id,:pay_id, :utilisateur_id,:_destroy],
                                          utilisateur_type_s_irrigues_attributes: [:id, :utilisateur_id, :type_systeme_irrigue_id, :_destroy],
                                          utilisateur_thematiques_attributes: [:id, :utilisateur_id, :thematique_id, :_destroy],
                                          utilisateur_specialites_attributes: [:id, :utilisateur_id, :specialite_id, :_destroy],
                                          expert_sous_types_attributes: [:id, :utilisateur_id, :sous_type_expert_id, :_destroy],
                                          )
    end
end
