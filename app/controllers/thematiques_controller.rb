class ThematiquesController < ApplicationController
  include Response
  before_action :set_thematique, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /thematiques or /thematiques.json
  def index
    @thematiques = Thematique.all
    json_response(@thematiques)
  end

  # GET /thematiques/1 or /thematiques/1.json
  def show
    json_response(@thematique)
  end

  # GET /thematiques/new
  def new
    @thematique = Thematique.new
    json_response(@thematique)
  end

  # GET /thematiques/1/edit
  def edit
  end

  # POST /thematiques or /thematiques.json
  def create
      @thematique = Thematique.new(thematique_params)

 
      if @thematique.save
        format.json { render :show, status: :created, location: @thematique }
      else
        
        format.json { render json: @thematique.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /thematiques/1 or /thematiques/1.json
  def update
    
      if @thematique.update(thematique_params)
        format.json { render :show, status: :ok, location: @thematique }
      else
    
        format.json { render json: @thematique.errors, status: :unprocessable_entity }
      end
  end

  # DELETE /thematiques/1 or /thematiques/1.json
  def destroy
    @thematique.destroy
    respond_to do |format|
      format.html { redirect_to thematiques_url, notice: "Thematique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thematique
      @thematique = Thematique.find(params[:id])
      #json_response(@thematique)
    end

    # Only allow a list of trusted parameters through.
    def thematique_params
      params.require(:thematique).permit(:libelle, :description)
    end
end
