class SweetsController < ApplicationController
  before_action :set_sweet, only: [:show, :edit, :update, :destroy]

  # GET /sweets
  # GET /sweets.json
  def index
    @sweets = Sweet.all
  end

  # GET /sweets/1
  # GET /sweets/1.json
  def show
  end

  # GET /sweets/new
  def new
    @sweet = Sweet.new
    @sweet.swit_id = params[:id]
    @sweet.username = Swit.find(@sweet.swit_id).username
    @temp = Swit.find(@sweet.swit_id).sweet_count
    Swit.find(params[:id]).sweet_count = @temp + 1
    @sweet.save
  end

  # GET /sweets/1/edit
  def edit
  end

  # POST /sweets
  # POST /sweets.json
  def create
    @sweet = Sweet.new(sweet_params)
    respond_to do |format|
      if @sweet.save
        format.html { redirect_to swits, notice: 'Sweet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sweet }
      else
        format.html { render action: 'new' }
        format.json { render json: @sweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sweets/1
  # PATCH/PUT /sweets/1.json
  def update
    respond_to do |format|
      if @sweet.update(sweet_params)
        format.html { redirect_to @sweet, notice: 'Sweet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sweets/1
  # DELETE /sweets/1.json
  def destroy
    @sweet.destroy
    respond_to do |format|
      format.html { redirect_to sweets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sweet
      @sweet = Sweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sweet_params
      params.require(:sweet).permit(:swit_id, :username)
    end
end
