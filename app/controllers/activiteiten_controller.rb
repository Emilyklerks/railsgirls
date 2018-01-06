class ActiviteitenController < ApplicationController
  before_action :set_activiteit, only: [:show, :edit, :update, :destroy]

  # GET /activiteiten
  # GET /activiteiten.json
  def index
    @activiteiten = Activiteit.all
  end

  # GET /activiteiten/1
  # GET /activiteiten/1.json
  def show
  end

  # GET /activiteiten/new
  def new
    @activiteit = Activiteit.new
  end

  # GET /activiteiten/1/edit
  def edit
  end

  # POST /activiteiten
  # POST /activiteiten.json
  def create
    @activiteit = Activiteit.new(activiteit_params)

    respond_to do |format|
      if @activiteit.save
        format.html { redirect_to @activiteit, notice: 'Activiteit was successfully created.' }
        format.json { render :show, status: :created, location: @activiteit }
      else
        format.html { render :new }
        format.json { render json: @activiteit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activiteiten/1
  # PATCH/PUT /activiteiten/1.json
  def update
    respond_to do |format|
      if @activiteit.update(activiteit_params)
        format.html { redirect_to @activiteit, notice: 'Activiteit was successfully updated.' }
        format.json { render :show, status: :ok, location: @activiteit }
      else
        format.html { render :edit }
        format.json { render json: @activiteit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activiteiten/1
  # DELETE /activiteiten/1.json
  def destroy
    @activiteit.destroy
    respond_to do |format|
      format.html { redirect_to activiteiten_url, notice: 'Activiteit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activiteit
      @activiteit = Activiteit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activiteit_params
      params.require(:activiteit).permit(:naam, :beschrijving, :afbeelding)
    end
end
