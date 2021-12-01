class AuteursController < InheritedResources::Base

  include Response
  before_action :set_category, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /categories or /categories.json
  def index
    @auteurs = Auteur.all
    json_response(@auteurs)
  end

  # GET /categories/1 or /categories/1.json
  def show
    json_response(@auteur)
  end

  # GET /categories/new
  def new
    @auteur = Auteur.new
    json_response(@auteur)
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories or /categories.json
  def create
    @category = Auteur.new(auteur_params)

    respond_to do |format|
      if @category.save
        format.json { render :show, status: :created, location: @category }
      else
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    respond_to do |format|
      if @category.update(auteur_params)
      
        format.json { render :show, status: :ok, location: @category }
      else
       
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
     
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Auteur.find(params[:id])
     # json_response(@category)
    end
    def auteur_params
      params.require(:auteur).permit(:nom)
    end

end
