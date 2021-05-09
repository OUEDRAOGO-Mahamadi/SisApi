class LocaliteLocalitesController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  # GET /ressources or /ressources.json
  def index
    @localite_localites = LocaliteLocalite.all
    json_response(@localite_localites)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@localite_localite)
  end


  # POST /ressources or /ressources.json
  def create
    @localite_localite = LocaliteLocalite.new(localite_localite_params)

    respond_to do |format|
      if @localite_localite.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @localite_localite }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @localite_localite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @localite_localite.update(localite_localite_params)
        #format.html { redirect_to @ressource, notice: "Ressource was successfully updated." }
        format.json { render :show, status: :ok, location: @localite_localite }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @localite_localite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @localite_localite.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @localite_localite = LocaliteLocalite.find(params[:id])
      #json_response(@ressource)
    end

    def localite_localite_params
      params.require(:localite_localite).permit(:localite_id, :sous_localite_id)
    end

end
