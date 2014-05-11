class SocialmediaController < ApplicationController
  before_action :set_socialmedium, only: [:show, :edit, :update, :destroy]

  # GET /socialmedia
  # GET /socialmedia.json
  def index
    @socialmedia = Socialmedium.all
  end

  # GET /socialmedia/1
  # GET /socialmedia/1.json
  def show
  end

  # GET /socialmedia/new
  def new
    @socialmedium = Socialmedium.new
  end

  # GET /socialmedia/1/edit
  def edit
  end

  # POST /socialmedia
  # POST /socialmedia.json
  def create
    @socialmedium = Socialmedium.new(socialmedium_params)

    respond_to do |format|
      if @socialmedium.save
        format.html { redirect_to @socialmedium, notice: 'Socialmedium was successfully created.' }
        format.json { render :show, status: :created, location: @socialmedium }
      else
        format.html { render :new }
        format.json { render json: @socialmedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socialmedia/1
  # PATCH/PUT /socialmedia/1.json
  def update
    respond_to do |format|
      if @socialmedium.update(socialmedium_params)
        format.html { redirect_to @socialmedium, notice: 'Socialmedium was successfully updated.' }
        format.json { render :show, status: :ok, location: @socialmedium }
      else
        format.html { render :edit }
        format.json { render json: @socialmedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socialmedia/1
  # DELETE /socialmedia/1.json
  def destroy
    @socialmedium.destroy
    respond_to do |format|
      format.html { redirect_to socialmedia_url, notice: 'Socialmedium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socialmedium
      @socialmedium = Socialmedium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socialmedium_params
      params.require(:socialmedium).permit(:name, :username, :password)
    end
end
