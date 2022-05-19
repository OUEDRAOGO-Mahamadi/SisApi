class VotesController < InheritedResources::Base
  include Response
  before_action :set_vote, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /votes or /votes.json
  def index
    @votes = Vote.all
    json_response(@votes)
  end

  # GET /votes/1 or /votes/1.json
  def show
    json_response(@vote)
  end

  # GET /votes/new
  def new
    @vote = Vote.new
    json_response(@vote)
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes or /votes.json
  def create
    @vote = Vote.new(vote_params)

    respond_to do |format|
      if @vote.save
        
        format.json { render :show, status: :created, location: @vote }
      else
        
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votes/1 or /votes/1.json
  def update
    respond_to do |format|
      if @vote.update(vote_params)
        
        format.json { render :show, status: :ok, location: @vote }
      else
        
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1 or /votes/1.json
  def destroy
    @vote.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    def vote_params
      params.require(:vote).permit(:description, :user_id, :etoile)
    end

end
