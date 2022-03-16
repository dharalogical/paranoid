class SubparanoidsController < ApplicationController
  before_action :set_subparanoids, only: %i[ show edit update destroy ]

  def index
    @subparanoids = Subparanoid.all
  end

  def show
  end

  def new
    @subparanoid = Subparanoid.new
  end

  def edit
  end

  def create
    @paranoiac = Paranoiac.find(params[:paranoiac_id])
    @subparanoid = @paranoiac.subparanoids.new(subparanoid_params)

    redirect_to paranoiac_path(@paranoiac)
  end

  def update
    respond_to do |format|
      if @subparanoid.update(subparanoid_params)
        format.html { redirect_to subparanoid_url(@subparanoid), notice: "subparanoid was successfully updated." }
        format.json { render :show, status: :ok, location: @subparanoid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subparanoid.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @subparanoid.destroy

    respond_to do |format|
      format.html { redirect_to subparanoid_url, notice: "subparanoid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_subparanoid
    @subparanoid = Subparanoid.find(params[:id])
  end

  def subparanoid_params
    params.require(:subparanoid).permit(:name)
  end
end

