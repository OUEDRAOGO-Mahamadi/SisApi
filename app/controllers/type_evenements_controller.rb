class TypeEvenementsController < ApplicationController
  include Response
  before_action :set_type_evenement, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /type_evenements or /type_evenements.json
  def index
    @type_evenements = TypeEvenement.all
    json_response(@type_evenements)
  end

  # GET /type_evenements/1 or /type_evenements/1.json
  def show
    json_response(@type_evenement)
  end

  # GET /type_evenements/new
  def new
    @type_evenement = TypeEvenement.new
    json_response(@type_evenement)
  end

  # GET /type_evenements/1/edit
  def edit
  end

  # POST /type_evenements or /type_evenements.json
  def create
    @type_evenement = TypeEvenement.new(type_evenement_params)

    respond_to do |format|
      if @type_evenement.save
        format.html { redirect_to @type_evenement, notice: "Type evenement was successfully created." }
        format.json { render :show, status: :created, location: @type_evenement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_evenement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_evenements/1 or /type_evenements/1.json
  def update
    respond_to do |format|
      if @type_evenement.update(type_evenement_params)
        format.html { redirect_to @type_evenement, notice: "Type evenement was successfully updated." }
        format.json { render :show, status: :ok, location: @type_evenement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_evenement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_evenements/1 or /type_evenements/1.json
  def destroy
    @type_evenement.destroy
    respond_to do |format|
      format.html { redirect_to type_evenements_url, notice: "Type evenement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_evenement
      @type_evenement = TypeEvenement.find(params[:id])
      #json_response(@type_evenement)
    end

    # Only allow a list of trusted parameters through.
    def type_evenement_params
      params.require(:type_evenement).permit(:libelle, :description)
    end
end
