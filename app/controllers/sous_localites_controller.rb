class SousLocalitesController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @sous_localites = SousLocalite.all
    json_response(@sous_localites)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@sous_localite)
  end

  # GET /ressources/new
  def new
    @sous_localite = SousLocalite.new
    json_response(@sous_localite)
  end

  # GET /ressources/1/edit
  def edit
  end

  # POST /ressources or /ressources.json
  def create
    @sous_localite = SousLocalite.new(sous_localite_params)

    respond_to do |format|
      if @sous_localite.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @sous_localite }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sous_localite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @sous_localite.update(sous_localite_params)
        #format.html { redirect_to @ressource, notice: "Ressource was successfully updated." }
        format.json { render :show, status: :ok, location: @sous_localite }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sous_localite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @sous_localite.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @sous_localite = SousLocalite.find(params[:id])
      #json_response(@ressource)
    end
    def sous_localite_params
      params.require(:sous_localite).permit(:type, :nom)
    end

end
