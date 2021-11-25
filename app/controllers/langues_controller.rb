class LanguesController < ApplicationController
   include Response
  before_action :set_langue, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token



  #fonction ajoutes
  def recherche
    @langues=Langue.where("code= ? OR nom= ?", params[:code],params[:nom])
    json_response(@langues)
  end
  # GET /langues or /langues.json
  def index
    @langues = Langue.all
    json_response(@langues)
  end

  # GET /langues/1 or /langues/1.json
  def show
    json_response(@langue)
  end

  # GET /langues/new
  def new
    @langue = Langue.new
    json_response(@langue)
  end

  # GET /langues/1/edit
  def edit
  end

  # POST /langues or /langues.json
  def create
    @langue = Langue.new(langue_params)

    respond_to do |format|
      if @langue.save
       
        format.json { render :show, status: :created, location: @langue }
      else
       
        format.json { render json: @langue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /langues/1 or /langues/1.json
  def update
    respond_to do |format|
      if @langue.update(langue_params)
      
        format.json { render :show, status: :ok, location: @langue }
      else
       
        format.json { render json: @langue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /langues/1 or /langues/1.json
  def destroy
    @langue.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_langue
      @langue = Langue.find(params[:id])
      #json_response(@langue)
    end

    # Only allow a list of trusted parameters through.
    def langue_params
      params.require(:langue).permit!
    end
end
