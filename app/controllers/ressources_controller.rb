class RessourcesController < ApplicationController
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  #fonction ajoutée

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
       
        format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @ressource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @ressource.update(ressource_params)
        format.html { redirect_to @ressource, notice: "Ressource was successfully updated." }
        format.json { render :show, status: :ok, location: @ressource }
      else
        format.html { render :edit, status: :unprocessable_entity }
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
      params.require(:ressource).permit(:nom, :date_creation, :derniere_date_maj, :date_debut_publication, :date_fin_publication, :statut, :video, :image, :description, :url, :format_id, :langue_id, :mot_cle_id, :utilisateur_id, :unite_administrative_id, :thematique_id, :type_systeme_irrigue_id, :type_ressource_id,:profile_id,profile_ids:[])
    end
end
