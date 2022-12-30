class BiriktirsController < ApplicationController
  before_action :set_biriktir, only: %i[ show edit update destroy ]
# /

  def new
    @project = Project.find(params[:project_id])
    @biriktir =  @project.biriktirs.build
    @biriktirs = Biriktir.where(project: @project)
  end

  def create
    @biriktir = Biriktir.new(biriktir_params)

    respond_to do |format|
      if @biriktir.save
        @biriktir_project = @biriktir.project
        format.html { redirect_to new_project_biriktir_path(@biriktir_project), notice: "Biriktir was successfully created." }
        format.json { render :show, status: :created, location: @biriktir }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @biriktir.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @biriktir.destroy
    @biriktir_project = @biriktir.project
    respond_to do |format|
      format.html { redirect_to new_project_biriktir_path(@biriktir_project), notice: "Biriktir was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_biriktir
      @biriktir = Biriktir.find(params[:id])
    end

    def biriktir_params
      params.require(:biriktir).permit(:biriktirma, :project_id)
    end
end
