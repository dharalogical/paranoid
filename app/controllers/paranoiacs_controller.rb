class ParanoiacsController < ApplicationController
  before_action :set_paranoiac, only: %i[ show edit update destroy ]

  # GET /paranoiacs or /paranoiacs.json
  def index
    @paranoiacs = Paranoiac.all
  end

  # GET /paranoiacs/1 or /paranoiacs/1.json
  def show
  end

  # GET /paranoiacs/new
  def new
    @paranoiac = Paranoiac.new
  end

  # GET /paranoiacs/1/edit
  def edit
  end

  # POST /paranoiacs or /paranoiacs.json
  def create
    @paranoiac = Paranoiac.new(paranoiac_params)

    respond_to do |format|
      if @paranoiac.save
        format.html { redirect_to paranoiac_url(@paranoiac), notice: "Paranoiac was successfully created." }
        format.json { render :show, status: :created, location: @paranoiac }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paranoiac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paranoiacs/1 or /paranoiacs/1.json
  def update
    respond_to do |format|
      if @paranoiac.update(paranoiac_params)
        format.html { redirect_to paranoiac_url(@paranoiac), notice: "Paranoiac was successfully updated." }
        format.json { render :show, status: :ok, location: @paranoiac }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paranoiac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paranoiacs/1 or /paranoiacs/1.json
  def destroy
    @paranoiac.destroy

    respond_to do |format|
      format.html { redirect_to paranoiacs_url, notice: "Paranoiac was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paranoiac
      @paranoiac = Paranoiac.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paranoiac_params
      params.require(:paranoiac).permit(:lastname, :firstname)
    end
end
