class TypeSystemeIrriguesController < ApplicationController
  include Response
  before_action :set_type_systeme_irrigue, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /type_systeme_irrigues or /type_systeme_irrigues.json
  def index
    @type_systeme_irrigues = TypeSystemeIrrigue.all
    json_response(@type_systeme_irrigues)
  end

  # GET /type_systeme_irrigues/1 or /type_systeme_irrigues/1.json
  def show
    json_response(@type_systeme_irrigue)
  end

  # GET /type_systeme_irrigues/new
  def new
    @type_systeme_irrigue = TypeSystemeIrrigue.new
    json_response(@type_systeme_irrigue)
  end

 
  # POST /type_systeme_irrigues or /type_systeme_irrigues.json
  def create
    @type_systeme_irrigue = TypeSystemeIrrigue.new(type_systeme_irrigue_params)

    respond_to do |format|
      if @type_systeme_irrigue.save
       
        format.json { render :show, status: :created, location: @type_systeme_irrigue }
      else
       
        format.json { render json: @type_systeme_irrigue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_systeme_irrigues/1 or /type_systeme_irrigues/1.json
  def update
    respond_to do |format|
      if @type_systeme_irrigue.update(type_systeme_irrigue_params)
       
        format.json { render :show, status: :ok, location: @type_systeme_irrigue }
      else

        format.json { render json: @type_systeme_irrigue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_systeme_irrigues/1 or /type_systeme_irrigues/1.json
  def destroy
    @type_systeme_irrigue.destroy
    respond_to do |format|
      
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_systeme_irrigue
      @type_systeme_irrigue = TypeSystemeIrrigue.find(params[:id])
      #json_response(@type_systeme_irrigue)
    end

    # Only allow a list of trusted parameters through.
    def type_systeme_irrigue_params
      params.require(:type_systeme_irrigue).permit(:libelle, :sigle, :description, :caracteristique_id)
    end
end
