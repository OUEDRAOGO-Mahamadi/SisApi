class PaysController < InheritedResources::Base
  include Response
  before_action :set_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token


  #fonction ajoutée

  # GET /ressources or /ressources.json
  def index
    @pays = Pay.all
    json_response(@pays)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@pay)
  end

  # GET /ressources/new
  def new
    @pay = Pay.new
    json_response(@pay)
  end

  # GET /ressources/1/edit
  def edit
  end

  # POST /ressources or /ressources.json
  def create
    @pay = Pay.new(pay_params)

    respond_to do |format|
      if @pay.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @pay }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @pay.update(pay_params)
        #format.html { redirect_to @ressource, notice: "Ressource was successfully updated." }
        format.json { render :show, status: :ok, location: @pay }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @pay.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource
      @pay = Pay.find(params[:id])
      #json_response(@ressource)
    end

    def pay_params
      params.require(:pay).permit(:code, :nom,pays_regions_attributes: [:id, :region_id, :pay_id, :_destroy])
    end

end
