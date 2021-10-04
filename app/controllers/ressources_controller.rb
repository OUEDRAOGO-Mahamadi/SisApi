class RessourcesController < ApplicationController
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  #fonction ajoutée
  def creerRProfile
    @ressource_profiles=RessourceProfile.create("profile_id:?, ressource_id:?",params[:profile_id],params[:ressource_id])
    json_response(@ressource_profiles)
  end
  def rechercheSimple
    @ressources=Ressource.where("nom LIKE ?",params[:nom])
    json_response(@ressources)
  end
  def rechercheAvance
    @ressources=Ressource.where("langue_id= ? AND thematique_id= ? AND type_systeme_irrigue_id= ? ",params[:langue_id],params[:thematique_id],params[:type_systeme_irrigue_id])
    
    json_response(@ressources)
  end
  # GET /ressources or /ressources.json
  def index
    @ressources = Ressource.all
    json_response(@ressources)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@ressource)
  end

  # GET /ressources/new
  def new
    @ressource = Ressource.new
    json_response(@ressource)
  end

  # GET /ressources/1/edit
  def edit
  end

  # POST /ressources or /ressources.json
  def create
    @ressource = Ressource.new(ressource_params)

    respond_to do |format|
      if @ressource.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @ressource }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @ressource.update(ressource_params)
        #format.html { redirect_to @ressource, notice: "Ressource was successfully updated." }
        format.json { render :show, status: :ok, location: @ressource }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @ressource.destroy
    respond_to do |format|
      format.html { redirect_to ressources_url, notice: "Ressource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @ressource = Ressource.find(params[:id])
      #json_response(@ressource)
    end

    # Only allow a list of trusted parameters through.
    def ressource_params
      params.require(:ressource).permit(:nom,       
                                       :date_debut_publication,
                                       :pj, :date_fin_publication, 
                                       :statut, 
                                       :video, 
                                       :description,
                                       :nombre_vue,  
                                       :nombre_telecharge,
                                       :derniere_date_consulte 
                                       :url, 
                                       :le_format_id, 
                                       :utilisateur_id, 
                                       :type_ressource_id,
                                       ressource_mot_cles_attributes: [:id, :ressource_id, :mot_cle_id, :_destroy],
                                       ressource_langues_attributes: [:id,:langue_id, :ressource_id,:_destroy],
                                       ressource_unite_administratives_attributes: [:id, :ressource_id, :unite_administrative_id, :_destroy],
                                       ressource_profiles_attributes: [:id, :ressource_id, :profile_id, :_destroy],
                                       ressource_systeme_irrigues_attributes: [:id, :ressource_id, :type_systeme_irrigue_id, :_destroy],
                                       ressource_thematiques_attributes: [:id, :ressource_id, :thematique_id, :_destroy],
                                       ressource_imgs_attributes: [:id, :ressource_id, :image_id, :_destroy],
                                       ressource_pjointes_attributes: [:id, :ressource_id, :pjointe_id, :_destroy],
                                       ressource_pays_attributes: [:id, :ressource_id, :pay_id, :_destroy]
                                       
                                       )
    end
end
