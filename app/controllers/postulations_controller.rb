class PostulationsController < ApplicationController
  before_action :set_postulation, only: %i[ show edit update destroy ]

  # GET /postulations or /postulations.json
  def index
    @postulations = Postulation.all
  end

  # GET /postulations/1 or /postulations/1.json
  def show
  end

  # GET /postulations/new
  def new
    @postulation = Postulation.new
  end

  # GET /postulations/1/edit
  def edit
  end

  # POST /postulations or /postulations.json
  def create
    @postulation = Postulation.new(postulation_params)

    respond_to do |format|
      if @postulation.save
        format.html { redirect_to postulation_url(@postulation), notice: "Postulation was successfully created." }
        format.json { render :show, status: :created, location: @postulation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulations/1 or /postulations/1.json
  def update
    respond_to do |format|
      if @postulation.update(postulation_params)
        format.html { redirect_to postulation_url(@postulation), notice: "Postulation was successfully updated." }
        format.json { render :show, status: :ok, location: @postulation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulations/1 or /postulations/1.json
  def destroy
    @postulation.destroy

    respond_to do |format|
      format.html { redirect_to postulations_url, notice: "Postulation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulation
      @postulation = Postulation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postulation_params
      params.require(:postulation).permit(:publication_id)
    end
end
