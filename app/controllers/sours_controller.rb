class SoursController < ApplicationController
  before_action :set_sour, only: [:show, :edit, :update, :destroy]

  # GET /sours
  # GET /sours.json
  def index
    @sours = Sour.all
  end

  # GET /sours/1
  # GET /sours/1.json
  def show
  end

  # GET /sours/new
  def new
    @sour = Sour.new
  end

  # GET /sours/1/edit
  def edit
  end

  # POST /sours
  # POST /sours.json
  def create
    @sour = Sour.new(sour_params)
    @sour.swit_id = params[:id]
    @sour.username = Swit.find(params[:id]).username
    @temp = Swit.find(params[:id]).sour_count
    Swit.find(params[:id]).sour_count = @temp + 1
    @sour.save
    respond_to do |format|
      if @sour.save
        format.html { redirect_to @sour, notice: 'Sour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sour }
      else
        format.html { render action: 'new' }
        format.json { render json: @sour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sours/1
  # PATCH/PUT /sours/1.json
  def update
    respond_to do |format|
      if @sour.update(sour_params)
        format.html { redirect_to @sour, notice: 'Sour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sours/1
  # DELETE /sours/1.json
  def destroy
    @sour.destroy
    respond_to do |format|
      format.html { redirect_to sours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sour
      @sour = Sour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sour_params
      params.require(:sour).permit(:swit_id, :username)
    end
end
