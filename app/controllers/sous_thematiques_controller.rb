class SousThematiquesController < InheritedResources::Base
  include Response
  before_action :set_thematique, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /thematiques or /thematiques.json
  def index
    @thematiques = SousThematique.all
    json_response(@thematiques)
  end

  # GET /thematiques/1 or /thematiques/1.json
  def show
  end

  # GET /thematiques/new
  # def new
  #   @thematique = SousThematique.new
  #   json_response(@thematique)
  # end

  # GET /thematiques/1/edit
  def edit
  end

  # POST /thematiques or /thematiques.json
  def create
    @thematique = SousThematique.new(thematique_params)

    respond_to do |format|
      if @thematique.save
       
        format.json { render :show, status: :created, location: @thematique }
      else
       
        format.json { render json: @thematique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thematiques/1 or /thematiques/1.json
  def update
    respond_to do |format|
      if @thematique.update(thematique_params)
        
        format.json { render :show, status: :ok, location: @thematique }
      else
       
        format.json { render json: @thematique.errors, status: :unprocessable_entity }
      end
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
      @thematique = SousThematique.find(params[:id])
      #json_response(@thematique)
    end
  private

    def sous_thematique_params
      params.require(:sous_thematique).permit(:libelle, :description)
    end

end
