class RegionLocalitesController < InheritedResources::Base

  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @region_localites = RegionLocalite.all
    json_response(@region_localites)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@region_localite)
  end


  # POST /ressources or /ressources.json
  def create
    @region_localite = RegionLocalite.new(region_localite_params)

    respond_to do |format|
      if @region_localite.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @region_localite }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @region_localite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @region_localite.update(region_localite_params)
        #format.html { redirect_to @ressource, notice: "Ressource was successfully updated." }
        format.json { render :show, status: :ok, location: @region_localite }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @region_localite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @region_localite.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @region_localite = RegionLocalite.find(params[:id])
      #json_response(@ressource)
    end
    def region_localite_params
      params.require(:region_localite).permit(:localite_id, :region_id)
    end

end
