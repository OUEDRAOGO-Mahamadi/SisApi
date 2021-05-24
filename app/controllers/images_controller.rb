class ImagesController < InheritedResources::Base

  include Response
  before_action :set_image, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /ressources or /ressources.json
  def index
    @images = Image.all
    json_response(@images)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@image)
  end

  # GET /ressources/new
  def new
    @image = Image.new
    json_response(@image)
  end

  # GET /ressources/1/edit
  def edit
  end

  # POST /ressources or /ressources.json
  def create
    @image = Image.new(image_params)

    respond_to do |format|
      if @image.save
       
        #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
        format.json { render :show, status: :created, location: @image }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)

        format.json { render :show, status: :ok, location: @image }
      else
     
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1 or /ressources/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
      #json_response(@ressource)
    end
    def image_params
      params.require(:image).permit( :file,:taille)
    end

end
