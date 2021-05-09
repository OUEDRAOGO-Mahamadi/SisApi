class RessourceImgsController < InheritedResources::Base
  include Response
  before_action :set_ressource_img, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /ressources or /ressources.json
  def index
    @ressource_imgs = RessourceImg.all
    json_response(@ressource_imgs)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@ressource_img)
  end


  # POST /ressources or /ressources.json
  def create
    @ressource_img = RessourceImg.new(ressource_img_params)

    respond_to do |format|
      if @ressource_img.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @ressource_img }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ressource_img.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @ressource_img.update(ressource_img_params)

        format.json { render :show, status: :ok, location: @ressource_img }
      else
     
        format.json { render json: @ressource_img.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @ressource_img.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ressource_img
      @ressource_img = RessourceImg.find(params[:id])
    end
      #j
    def ressource_img_params
      params.require(:ressource_img).permit(:ressource_id, :image_id)
    end

end
