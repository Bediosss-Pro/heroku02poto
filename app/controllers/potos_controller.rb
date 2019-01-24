class PotosController < ApplicationController
  before_action :set_poto, only: [:show, :edit, :update, :destroy]

  # GET /potos
  # GET /potos.json
  def index
    @potos = Poto.all
  end

  # GET /potos/1
  # GET /potos/1.json
  def show
  end

  # GET /potos/new
  def new
    @poto = Poto.new
  end

  # GET /potos/1/edit
  def edit
  end

  # POST /potos
  # POST /potos.json
  def create
    @poto = Poto.new(poto_params)

    respond_to do |format|
      if @poto.save
        format.html { redirect_to @poto, notice: 'Poto was successfully created.' }
        format.json { render :show, status: :created, location: @poto }
      else
        format.html { render :new }
        format.json { render json: @poto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potos/1
  # PATCH/PUT /potos/1.json
  def update
    respond_to do |format|
      if @poto.update(poto_params)
        format.html { redirect_to @poto, notice: 'Poto was successfully updated.' }
        format.json { render :show, status: :ok, location: @poto }
      else
        format.html { render :edit }
        format.json { render json: @poto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potos/1
  # DELETE /potos/1.json
  def destroy
    @poto.destroy
    respond_to do |format|
      format.html { redirect_to potos_url, notice: 'Poto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poto
      @poto = Poto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poto_params
      params.require(:poto).permit(:titre, :contenu)
    end
end
