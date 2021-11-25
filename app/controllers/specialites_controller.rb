class SpecialitesController < ApplicationController
  include Response
  before_action :set_specialite, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /specialites or /specialites.json
  def index
    @specialites = Specialite.all
    json_response(@specialites)
  end

  # GET /specialites/1 or /specialites/1.json
  def show
    json_response(@specialite)
  end

  # GET /specialites/new
  def new
    @specialite = Specialite.new
    json_response(@specialite)
  end

  # GET /specialites/1/edit
  def edit
  end

  # POST /specialites or /specialites.json
  def create
    @specialite = Specialite.new(specialite_params)

    respond_to do |format|
      if @specialite.save
        format.json { render :show, status: :created, location: @specialite }
      else
        format.json { render json: @specialite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specialites/1 or /specialites/1.json
  def update
    respond_to do |format|
      if @specialite.update(specialite_params)
       
        format.json { render :show, status: :ok, location: @specialite }
      else
       
        format.json { render json: @specialite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specialites/1 or /specialites/1.json
  def destroy
    @specialite.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialite
      @specialite = Specialite.find(params[:id])
      #json_response(@specialite)
    end

    # Only allow a list of trusted parameters through.
    def specialite_params
      params.require(:specialite).permit(:code, :designation)
    end
end
