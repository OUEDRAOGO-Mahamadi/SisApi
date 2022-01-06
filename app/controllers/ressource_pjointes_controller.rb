class RessourcePjointesController < InheritedResources::Base

  include Response
  before_action :set_image, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /ressources or /ressources.json
  def index
    @ressource_pjointes = RessourcePjointe.all
    json_response(@ressource_pjointes)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@ressource_pjointe)
  end

  # POST /ressources or /ressources.json
  def create
    @ressource_pjointe = RessourcePjointe.new(ressource_pjointe_params)

    respond_to do |format|
      if @ressource_pjointe.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @ressource_pjointe }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ressource_pjointe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @ressource_pjointe.update(ressource_pjointe_params)

        format.json { render :show, status: :ok, location: @ressource_pjointe }
      else
     
        format.json { render json: @ressource_pjointe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @ressource_pjointe.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def delete
    @ressource= RessourcePjointe.where("pjointe_id= ? AND ressource_id= ? ",params[:pjointe_id],params[:ressource_id]).destroy_all
    # respond_to do |format|
    #   format.json { head :no_content }
    # end

    json_response(@ressource)
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @ressource_pjointe = RessourcePjointe.find(params[:id])
      #json_response(@ressource)
    end
    def ressource_pjointe_params
      params.require(:ressource_pjointe).permit(:ressource_id, :pjointe_id)
    end

end
