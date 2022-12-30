class XabarsController < ApplicationController
  before_action :set_xabar, only: %i[ show edit update destroy ]

  def index
    @xabars = Xabar.all
  end

  def show
    @project = @xabar.project
    @xabardors = Xabardor.where(xabar_id: @xabar)
    @xabardor = @xabar.xabardor.build
  end
# /
  # GET /xabars/new
  def new
    @project = Project.find(params[:project_id])
    @xabar = @project.xabars.build
    @xabars = Xabar.where(project_id: @project.id)
    # @xabar = Xabar.new
  end

  # GET /xabars/1/edit
  def edit
  end

  # POST /xabars or /xabars.json
  def create
    @xabar = Xabar.new(xabar_params)
    respond_to do |format|
      if @xabar.save
        @xabar_project = @xabar.project_id
        format.html { redirect_to new_project_xabar_path(@xabar_project), notice: "Xabar was successfully created." }
        format.json { render :show, status: :created, location: @xabar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @xabar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xabars/1 or /xabars/1.json
  def update
    respond_to do |format|
      if @xabar.update(xabar_params)
        format.html { redirect_to xabar_url(@xabar), notice: "Xabar was successfully updated." }
        format.json { render :show, status: :ok, location: @xabar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @xabar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xabars/1 or /xabars/1.json
  def destroy
    @xabar.destroy

    respond_to do |format|
      @pp = @xabar.project
      format.html { redirect_to new_project_xabar_path(@pp), notice: "Xabar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xabar
      @xabar = Xabar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def xabar_params
      params.require(:xabar).permit(:ism, :tavsiv, :project_id)
    end
end
