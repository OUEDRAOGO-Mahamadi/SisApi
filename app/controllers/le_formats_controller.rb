class LeFormatsController < ApplicationController
  include Response
  before_action :set_format, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /formats or /formats.json
  def index
    @formats = LeFormat.all
    json_response(@formats)
  end

  # GET /formats/1 or /formats/1.json
  def show
    json_response(@format)
  end

  # GET /formats/new
  def new
    @format = LeFormat.new
    json_response(@format)
  end

  # GET /formats/1/edit
  def edit
  end

  # POST /formats or /formats.json
  def create
    @format = LeFormat.new(format_params)

    #respond_to do |format|
    if @format.save
        #format.html { redirect_to @format, notice: "Format was successfully created." }
        #format.json { render :show, status: :created, location: @format }
      render json: @format, status: :created, location: @format 

    else
        #format.html { render :new, status: :unprocessable_entity }
        #format.json { render json: @format.errors, status: :unprocessable_entity }
        render json: @format.errors, status: :created, location: @format 
    end
    #end
  end

  # PATCH/PUT /formats/1 or /formats/1.json
  def update
    #respond_to do |format|
    if @format.update(format_params)
      #   #format.html { redirect_to @format, notice: "Format was successfully updated." }
      render json: @format, status: :ok, location: @format  
    else
      #   #format.html { render :edit, status: :unprocessable_entity }
      render json: @format.errors, status: :unprocessable_entity 
    end
    
  end

  # DELETE /formats/1 or /formats/1.json
  def destroy
    @format.destroy
    respond_to do |format|
      format.html { redirect_to formats_url, notice: "Format was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_format
      @format = LeFormat.find(params[:id])
      #json_response(@format)
    end

    # Only allow a list of trusted parameters through.
    def format_params
      params.require(:le_format).permit(:code, :libelle)
    end
end
