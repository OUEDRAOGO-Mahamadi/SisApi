class ProfilesController < ApplicationController
  include Response
  before_action :set_profile, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /profiles or /profiles.json
  def index
    @profiles = Profile.all
    json_response(@profiles)
  end

  # GET /profiles/1 or /profiles/1.json
  def show
    json_response(@profile)
  end

    # GET ressource,expert and event
  def getPublicProfile
    libelle="public"
    @profile=Profile.where("LOWER(libelle) = ?",libelle.downcase).first 
    json_response(@profile)
  end
  

  # GET /profiles/new
  def new
    @profile = Profile.new
    json_response(@profile)
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles or /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
       # format.html { redirect_to @profile, notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        #format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        #format.html { redirect_to @profile, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        #format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
      #json_response(@profile)
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:libelle,
                                      :droit_ressource_id,
                                      :droit_expert_id,
                                      :droit_evenement_id,
                                      :description)
    end
end
