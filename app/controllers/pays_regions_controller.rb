class PaysRegionsController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @pays_regions = PaysRegion.all
    json_response(@pays_regions)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@pays_region)
  end


  # POST /ressources or /ressources.json
  def create
    @pays_region = PaysRegion.new(pays_region_params)

    respond_to do |format|
      if @pays_region.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @pays_region }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pays_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @pays_region.update(pays_region_params)
        #format.html { redirect_to @ressource, notice: "Ressource was successfully updated." }
        format.json { render :show, status: :ok, location: @pays_region }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pays_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @pays_region.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @pays_region = PaysRegion.find(params[:id])
      #json_response(@ressource)
    end

    def pays_region_params
      params.require(:pays_region).permit(:pays_id, :region_id)
    end

end
