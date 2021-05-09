class RegionsController < InheritedResources::Base

  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @regions = Region.all
    json_response(@regions)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@region)
  end

  # GET /ressources/new
  def new
    @region = Region.new
    json_response(@region)
  end

  # GET /ressources/1/edit
  def edit
  end

  # POST /ressources or /ressources.json
  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @region }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @region.update(region_params)
        #format.html { redirect_to @ressource, notice: "Ressource was successfully updated." }
        format.json { render :show, status: :ok, location: @region }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @region.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @region = Region.find(params[:id])
      #json_response(@ressource)
    end

    def region_params
      params.require(:region).permit(:description, :nom,region_localites_attributes: [:id, :region_id, :localite_id, :_destroy])
    end

end
