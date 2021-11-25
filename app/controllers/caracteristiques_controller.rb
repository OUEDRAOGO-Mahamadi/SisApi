class CaracteristiquesController < ApplicationController
  include Response
  before_action :set_caracteristique, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /caracteristiques or /caracteristiques.json
  def index
    @caracteristiques = Caracteristique.all
    #json_response(@caracteristiques.include(:type_systeme_irrigues))
    render json: @caracteristiques
  end

  # GET /caracteristiques/1 or /caracteristiques/1.json
  def show
    json_response(@caracteristique)
  end

  # GET /caracteristiques/new
  def new
    @caracteristique = Caracteristique.new
    json_response(@caracteristique)
  end

  # GET /caracteristiques/1/edit
  def edit
  end

  # POST /caracteristiques or /caracteristiques.json
  def create
    @caracteristique = Caracteristique.new(caracteristique_params)

    respond_to do |format|
      if @caracteristique.save
       
        format.json { render :show, status: :created, location: @caracteristique }
      else
        
        format.json { render json: @caracteristique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracteristiques/1 or /caracteristiques/1.json
  def update
    respond_to do |format|
      if @caracteristique.update(caracteristique_params)
        
        format.json { render :show, status: :ok, location: @caracteristique }
      else
       
        format.json { render json: @caracteristique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristiques/1 or /caracteristiques/1.json
  def destroy
    @caracteristique.destroy
    respond_to do |format|
    
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracteristique
      @caracteristique = Caracteristique.find(params[:id])
      #json_response(@caracteristique)
    end

    # Only allow a list of trusted parameters through.
    def caracteristique_params
      params.require(:caracteristique).permit(:libelle, :sigle, :description, :valeur)
    end
end
