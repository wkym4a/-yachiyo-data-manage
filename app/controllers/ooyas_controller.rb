class OoyasController < ApplicationController
  before_action :set_ooya, only: [:show, :edit, :update, :destroy]

  # GET /ooyas
  # GET /ooyas.json
  def index
    @ooyas = Ooya.all
  end

  # GET /ooyas/1
  # GET /ooyas/1.json
  def show
  end

  # GET /ooyas/new
  def new
    @ooya = Ooya.new
  end

  # GET /ooyas/1/edit
  def edit
  end

  # POST /ooyas
  # POST /ooyas.json
  def create
    @ooya = Ooya.new(ooya_params)

    respond_to do |format|
      if @ooya.save
        format.html { redirect_to @ooya, notice: 'Ooya was successfully created.' }
        format.json { render :show, status: :created, location: @ooya }
      else
        format.html { render :new }
        format.json { render json: @ooya.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ooyas/1
  # PATCH/PUT /ooyas/1.json
  def update
    respond_to do |format|
      if @ooya.update(ooya_params)
        format.html { redirect_to @ooya, notice: 'Ooya was successfully updated.' }
        format.json { render :show, status: :ok, location: @ooya }
      else
        format.html { render :edit }
        format.json { render json: @ooya.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ooyas/1
  # DELETE /ooyas/1.json
  def destroy
    @ooya.destroy
    respond_to do |format|
      format.html { redirect_to ooyas_url, notice: 'Ooya was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ooya
      @ooya = Ooya.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ooya_params
      params.require(:ooya).permit(:surname, :name, :surname_kana, :name_kana, :zip_cd, :address1, :address2, :tel, :mobile, :memo)
    end
end
