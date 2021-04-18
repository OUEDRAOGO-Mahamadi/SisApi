class UtilisateursController < ApplicationController
  include Response
  before_action :set_utilisateur, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /utilisateurs or /utilisateurs.json
  def index
    @utilisateurs = Utilisateur.all
    json_response(@utilisateurs)
  end

  # GET /utilisateurs/1 or /utilisateurs/1.json
  def show
  end

  # GET /utilisateurs/new
  def new
    @utilisateur = Utilisateur.new
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
        format.html { redirect_to @utilisateur, notice: "Utilisateur was successfully created." }
        format.json { render :show, status: :created, location: @utilisateur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @utilisateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utilisateurs/1 or /utilisateurs/1.json
  def update
    respond_to do |format|
      if @utilisateur.update(utilisateur_params)
        format.html { redirect_to @utilisateur, notice: "Utilisateur was successfully updated." }
        format.json { render :show, status: :ok, location: @utilisateur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @utilisateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utilisateurs/1 or /utilisateurs/1.json
  def destroy
    @utilisateur.destroy
    respond_to do |format|
      format.html { redirect_to utilisateurs_url, notice: "Utilisateur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utilisateur
      @utilisateur = Utilisateur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def utilisateur_params
      params.require(:utilisateur).permit(:telephone, :email, :nom, :prenom, :fonction, :password, :status, :structure_id, :specialite_id, :categorie_id, :profile_id)
    end
end
