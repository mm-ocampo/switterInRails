class SwitsController < ApplicationController
  before_action :set_swit, only: [:show, :edit, :update, :destroy]

  # GET /swits
  # GET /swits.json
  def index
    @swits = Swit.all
  end

  # GET /swits/1
  # GET /swits/1.json
  def show
    @comments = Comment.all
  end

  # GET /swits/new
  def new
    @swit = Swit.new
    @swit.sweet_count = 0
    @swit.sour_count = 0
  end

  # GET /swits/1/edit
  def edit
  end

  def sweetswit
    @swit = Swit.find_by(id: params[:id])
    if @swit 
      @swit.sweet_count = @swit.sweet_count + 1
      if @swit.save
        redirect_to swits_path
      end
    end
  end

  def sourswit
    @swit = Swit.find_by(id: params[:id])
    if @swit 
      @swit.sour_count = @swit.sour_count + 1
      if @swit.save
        redirect_to swits_path
      end
    end
  end  

  # POST /swits
  # POST /swits.json
  def create
    @swit = Swit.new(swit_params)
    @swit.username = 'mm-ocampo'
    @swit.sweet_count = 0
    @swit.sour_count = 0
    respond_to do |format|
      if @swit.save
        format.html { redirect_to action: 'index', notice: 'Swit was successfully created.' }
        format.json { render action: 'index', status: :created, location: @swit }
      else
        format.html { render action: 'new' }
        format.json { render json: @swit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swits/1
  # PATCH/PUT /swits/1.json
  def update
    respond_to do |format|
      if @swit.update(swit_params)
        format.html { redirect_to action: 'index', notice: 'Swit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @swit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swits/1
  # DELETE /swits/1.json
  def destroy
    @swit.destroy
    respond_to do |format|
      format.html { redirect_to swits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swit
      @swit = Swit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swit_params
      params.require(:swit).permit(:username, :swit, :sweet_count, :sour_count)
    end
end
