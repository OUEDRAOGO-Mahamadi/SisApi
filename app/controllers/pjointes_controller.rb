class PjointesController < InheritedResources::Base
  include Response
  before_action :set_pjointe, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /ressources or /ressources.json
  def index
    @pjointe = Pjointe.all
    json_response(@pjointe)
  end

  # GET /ressources/1 or /ressources/1.json
  def show
    json_response(@pjointe)
  end

  # GET /ressources/new
  def new
    @pjointe = Pjointe.new
    json_response(@pjointe)
  end

  # GET /ressources/1/edit
  def edit
  end

  # POST /ressources or /ressources.json
  def create
    @pjointe = Pjointe.new(pjointe_params)
        if @pjointe.save
          
          json_response(@pjointe)
        else
          json_response(@pjointe.errors)
        end
    # respond_to do |format|
    #   if @pjointe.save
       
    #     #format.html { redirect_to @ressource, notice: "Ressource was successfully created." }
    #     format.json { render :show, status: :created, location: @pjointe }
    #   else
    #     #format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @pjointe.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /ressources/1 or /ressources/1.json
  def update
    respond_to do |format|
      if @pjointe.update(pjointe_params)

        format.json { render :show, status: :ok, location: @pjointe }
      else
     
        format.json { render json: @pjointe.errors, status: :unprocessable_entity }
      end
    end
  end

  ## DELETE /ressources/1 or /ressources/1.json
  def destroy
    @pjointe.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
  ## Use callbacks to share common setup or constraints between actions.
    def set_pjointe
      @pjointe = Pjointe.find(params[:id])
      #json_response(@ressource)
    end
    def pjointe_params
      params.require(:pjointe).permit(:file,:taille)
    end

end
