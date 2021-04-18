class UniteAdministrativesController < ApplicationController
  include Response
  before_action :set_unite_administrative, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /unite_administratives or /unite_administratives.json
  def index
    @unite_administratives = UniteAdministrative.all
    json_response(@unite_administratives)
  end

  # GET /unite_administratives/1 or /unite_administratives/1.json
  def show
  end

  # GET /unite_administratives/new
  def new
    @unite_administrative = UniteAdministrative.new
    json_response(@unite_administrative)
  end

  # GET /unite_administratives/1/edit
  def edit
  end

  # POST /unite_administratives or /unite_administratives.json
  def create
    @unite_administrative = UniteAdministrative.new(unite_administrative_params)

    respond_to do |format|
      if @unite_administrative.save
        format.html { redirect_to @unite_administrative, notice: "Unite administrative was successfully created." }
        format.json { render :show, status: :created, location: @unite_administrative }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unite_administrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unite_administratives/1 or /unite_administratives/1.json
  def update
    respond_to do |format|
      if @unite_administrative.update(unite_administrative_params)
        format.html { redirect_to @unite_administrative, notice: "Unite administrative was successfully updated." }
        format.json { render :show, status: :ok, location: @unite_administrative }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unite_administrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unite_administratives/1 or /unite_administratives/1.json
  def destroy
    @unite_administrative.destroy
    respond_to do |format|
      format.html { redirect_to unite_administratives_url, notice: "Unite administrative was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unite_administrative
      @unite_administrative = UniteAdministrative.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unite_administrative_params
      params.require(:unite_administrative).permit(:libelle, :code)
    end
end
