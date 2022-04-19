class SesController < InheritedResources::Base
  include Response
  before_action :set_structure, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /structures or /structures.json
  def index
    @structures = Sis.all
    json_response(@structures)
  end

  # GET /structures/1 or /structures/1.json
  def show
    json_response(@structure)
  end

  # GET /structures/new
  def new
    @structure = Sis.new
    json_response(@structure)
  end

  # GET /structures/1/edit
  def edit
  end

  # POST /structures or /structures.json
  def create
    @structure = Sis.new(set_sis)

    respond_to do |format|
      if @structure.save
        
        format.json { render :show, status: :created, location: @structure }
      else
        
        format.json { render json: @structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /structures/1 or /structures/1.json
  def update
    respond_to do |format|
      if @structure.update(set_sis)
       
        format.json { render :show, status: :ok, location: @structure }
      else
        
        format.json { render json: @structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /structures/1 or /structures/1.json
  def destroy
    @structure.destroy
    respond_to do |format|
      
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sis
      @structure = Sis.find(params[:id])
      #json_response(@structure)
    end

    def sis_params
      params.require(:sis).permit(:condition, :description)
    end

end
