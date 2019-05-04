class DerslersController < ApplicationController
  before_action :set_dersler, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  # GET /derslers
  # GET /derslers.json
  def index
    @derslers = Dersler.all
  end

  # GET /derslers/1
  # GET /derslers/1.json
  def show
  end

  # GET /derslers/new
  def new
    @dersler = Dersler.new
  end

  # GET /derslers/1/edit
  def edit
  end

  # POST /derslers
  # POST /derslers.json
  def create
    @dersler = Dersler.new(dersler_params)

    respond_to do |format|
      if @dersler.save
        format.html { redirect_to @dersler, notice: 'Dersler was successfully created.' }
        format.json { render :show, status: :created, location: @dersler }
      else
        format.html { render :new }
        format.json { render json: @dersler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /derslers/1
  # PATCH/PUT /derslers/1.json
  def update
    respond_to do |format|
      if @dersler.update(dersler_params)
        format.html { redirect_to @dersler, notice: 'Dersler was successfully updated.' }
        format.json { render :show, status: :ok, location: @dersler }
      else
        format.html { render :edit }
        format.json { render json: @dersler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /derslers/1
  # DELETE /derslers/1.json
  def destroy
    @dersler.destroy
    respond_to do |format|
      format.html { redirect_to derslers_url, notice: 'Dersler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dersler
      @dersler = Dersler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dersler_params
      params.require(:dersler).permit(:baslik, :konu, :aciklama,:resim, :tarih)
    end
end
