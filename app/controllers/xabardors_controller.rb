class XabardorsController < ApplicationController
  before_action :set_xabardor, only: %i[ show edit update destroy ]
# /
  # GET /xabardors or /xabardors.json
  def index
    @xabardors = Xabardor.all
  end

  # GET /xabardors/1 or /xabardors/1.json
  def show
  end

  # GET /xabardors/new
  def new
    @xabar = Xabar.find(params[:xabar_id])
    @xabardor = Xabardor.new
  end

  # GET /xabardors/1/edit
  def edit
    @xabar = @xabardor.xabar
  end

  # POST /xabardors or /xabardors.json
  def create
    @xabardor = Xabardor.new(xabardor_params)

    respond_to do |format|
      if @xabardor.save
        @xabar = @xabardor.xabar
        format.html { redirect_to xabar_path(@xabar), notice: "Xabardor was successfully created." }
        format.json { render :show, status: :created, location: @xabardor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @xabardor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xabardors/1 or /xabardors/1.json
  def update
    respond_to do |format|
      if @xabardor.update(xabardor_params)
        @xabar = @xabardor.xabar
        format.html { redirect_to xabar_path(@xabar), notice: "Xabardor was successfully updated." }
        format.json { render :show, status: :ok, location: @xabardor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @xabardor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xabardors/1 or /xabardors/1.json
  def destroy
    @xabardor.destroy

    respond_to do |format|
      @xabar = @xabardor.xabar
      format.html { redirect_to xabar_path(@xabar), notice: "Xabardor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xabardor
      @xabardor = Xabardor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def xabardor_params
      params.require(:xabardor).permit(:ism, :xabar_id)
    end
end
