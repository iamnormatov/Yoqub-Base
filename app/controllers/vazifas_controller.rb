class VazifasController < ApplicationController
  before_action :set_vazifa, only: %i[ show edit update destroy ]
# /
  # GET /vazifas or /vazifas.json
  def index
    @vazifas = Vazifa.all
  end

  # GET /vazifas/1 or /vazifas/1.json
  def show
  end

  # GET /vazifas/new
  def new
    @project = Project.find(params[:project_id])
    @vazifa = @project.vazifas.build
    @vazifas = @project.vazifas
    # @vazifa = Vazifa.new
  end

  # GET /vazifas/1/edit
  def edit
    @project = Project.find(params[:project_id])
  end

  # POST /vazifas or /vazifas.json
  def create
    @vazifa = Vazifa.new(vazifa_params)

    respond_to do |format|
      if @vazifa.save
        @vazifa_project = @vazifa.project
        format.html { redirect_to new_project_vazifa_url(@vazifa_project), notice: "Vazifa was successfully created." }
        format.json { render :show, status: :created, location: @vazifa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vazifa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vazifas/1 or /vazifas/1.json
  def update
    respond_to do |format|
      if @vazifa.update(vazifa_params)
        @vazifa_project = @vazifa.project
        format.html { redirect_to new_project_vazifa_url(@vazifa_project), notice: "Vazifa was successfully updated." }
        format.json { render :show, status: :ok, location: @vazifa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vazifa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vazifas/1 or /vazifas/1.json
  def destroy
    @vazifa.destroy

    respond_to do |format|
      @vazifa_project = @vazifa.project
      format.html { redirect_to new_project_vazifa_url(@vazifa_project), notice: "Vazifa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vazifa
      @vazifa = Vazifa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vazifa_params
      params.require(:vazifa).permit(:ism, :project_id)
    end
end
