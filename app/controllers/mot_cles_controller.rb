class MotClesController < ApplicationController
  include Response
  before_action :set_mot_cle, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /mot_cles or /mot_cles.json
  def index
    @mot_cles = MotCle.all
    json_response(@mot_cles)
  end

  # GET /mot_cles/1 or /mot_cles/1.json
  def show
  end

  # GET /mot_cles/new
  def new
    @mot_cle = MotCle.new
    json_response(@mot_cle)
  end

  # GET /mot_cles/1/edit
  def edit
  end

  # POST /mot_cles or /mot_cles.json
  def create
    @mot_cle = MotCle.new(mot_cle_params)

    respond_to do |format|
      if @mot_cle.save
        #format.html { redirect_to @mot_cle, notice: "Mot cle was successfully created." }
        format.json { render :show, status: :created, location: @mot_cle }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mot_cle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mot_cles/1 or /mot_cles/1.json
  def update
    respond_to do |format|
      if @mot_cle.update(mot_cle_params)
        #format.html { redirect_to @mot_cle, notice: "Mot cle was successfully updated." }
        format.json { render :show, status: :ok, location: @mot_cle }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mot_cle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mot_cles/1 or /mot_cles/1.json
  def destroy
    @mot_cle.destroy
    respond_to do |format|
      #format.html { redirect_to mot_cles_url, notice: "Mot cle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mot_cle
      @mot_cle = MotCle.find(params[:id])
      #json_response(@mot_cle)
    end

    # Only allow a list of trusted parameters through.
    def mot_cle_params
      params.require(:mot_cle).permit(:libelle)
    end
end
