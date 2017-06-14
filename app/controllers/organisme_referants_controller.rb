class OrganismeReferantsController < ApplicationController
  before_action :set_organisme_referant, only: [:show, :edit, :update, :destroy]

  # GET /organisme_referants
  # GET /organisme_referants.json
  def index
    @organisme_referants = OrganismeReferant.all
  end

  # GET /organisme_referants/1
  # GET /organisme_referants/1.json
  def show
  end

  # GET /organisme_referants/new
  def new
    @organisme_referant = OrganismeReferant.new
  end

  # GET /organisme_referants/1/edit
  def edit
  end

  # POST /organisme_referants
  # POST /organisme_referants.json
  def create
    @organisme_referant = OrganismeReferant.new(organisme_referant_params)

    respond_to do |format|
      if @organisme_referant.save
        format.html { redirect_to @organisme_referant, notice: 'Organisme referant was successfully created.' }
        format.json { render :show, status: :created, location: @organisme_referant }
      else
        format.html { render :new }
        format.json { render json: @organisme_referant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organisme_referants/1
  # PATCH/PUT /organisme_referants/1.json
  def update
    respond_to do |format|
      if @organisme_referant.update(organisme_referant_params)
        format.html { redirect_to @organisme_referant, notice: 'Organisme referant was successfully updated.' }
        format.json { render :show, status: :ok, location: @organisme_referant }
      else
        format.html { render :edit }
        format.json { render json: @organisme_referant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organisme_referants/1
  # DELETE /organisme_referants/1.json
  def destroy
    @organisme_referant.destroy
    respond_to do |format|
      format.html { redirect_to organisme_referants_url, notice: 'Organisme referant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organisme_referant
      @organisme_referant = OrganismeReferant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organisme_referant_params
      params.require(:organisme_referant).permit(:nom, :noCivique, :rue, :ville, :province, :etat, :codePostal, :telephoneBureau, :telephoneTelecopie, :courriel, :siteWeb)
    end
end
