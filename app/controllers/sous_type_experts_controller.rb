class SousTypeExpertsController < InheritedResources::Base
  include Response
  before_action :set_type_ressource, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /type_ressources or /type_ressources.json
  def index
    @type_experts = SousTypeExpert.all
    json_response(@type_experts)
  end

  # GET /type_ressources/1 or /type_ressources/1.json
  def show
    json_response(@type_expert)
  end

  # GET /type_ressources/new
  def new
    @type_expert = SousTypeExpert.new
    json_response(@type_expert)
  end

  # GET /type_ressources/1/edit
  def edit
  end

  # POST /type_ressources or /type_ressources.json
  def create
    @type_expert = SousTypeExpert.new(sous_type_expert_params)

    respond_to do |format|
      if @type_expert.save
       
      else
    
        format.json { render json: @type_expert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_ressources/1 or /type_ressources/1.json
  def update
    respond_to do |format|
      if @type_expert.update(sous_type_expert_params)
      
        format.json { render :show, status: :ok, location: @type_expert }
      else
      
        format.json { render json: @type_expert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_ressources/1 or /type_ressources/1.json
  def destroy
    @type_expert.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_ressource
      @type_expert = SousTypeExpert.find(params[:id])
      #json_response(@type_expert)
    end

    def sous_type_expert_params
      params.require(:sous_type_expert).permit(:libelle, :sigle, :description)
    end

end
