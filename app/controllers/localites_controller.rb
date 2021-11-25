class LocalitesController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  #fonction ajoutée

  # GET /ressources or /ressources.json
  def index
    @localites = Localite.all
    json_response(@localites)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@localite)
  end

  # GET /ressources/new
  def new
    @localite = Localite.new
    json_response(@localite)
  end

  # GET /ressources/1/edit
  def edit
  end

  # POST /ressources or /ressources.json
  def create
    @localite = Localite.new(localite_params)

    respond_to do |format|
      if @localite.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @localite }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @localite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @localite.update(localite_params)
        #format.html { redirect_to @ressource, notice: "Ressource was successfully updated." }
        format.json { render :show, status: :ok, location: @localite }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @localite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @localite.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @localite = Localite.find(params[:id])
      #json_response(@ressource)
    end
    def localite_params
      params.require(:localite).permit(:type_localite, :nom,localites_attributes: [:id,:type_localite,:nom],localite_localites_attributes: [:id, :localite_id, :sous_localite_id, :_destroy])
    end

end
