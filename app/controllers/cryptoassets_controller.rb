class CryptoassetsController < ApplicationController
  before_action :set_cryptoasset, only: %i[ show edit update destroy ]

  # GET /cryptoassets or /cryptoassets.json
  def index
    @cryptoassets = Cryptoasset.all
  end

  # GET /cryptoassets/1 or /cryptoassets/1.json
  def show
  end

  # GET /cryptoassets/new
  def new
    @cryptoasset = Cryptoasset.new
  end

  # GET /cryptoassets/1/edit
  def edit
  end

  # POST /cryptoassets or /cryptoassets.json
  def create
    @cryptoasset = Cryptoasset.new(cryptoasset_params)

    respond_to do |format|
      if @cryptoasset.save
        format.html { redirect_to cryptoasset_url(@cryptoasset), notice: "Cryptoasset was successfully created." }
        format.json { render :show, status: :created, location: @cryptoasset }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cryptoasset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cryptoassets/1 or /cryptoassets/1.json
  def update
    respond_to do |format|
      if @cryptoasset.update(cryptoasset_params)
        format.html { redirect_to cryptoasset_url(@cryptoasset), notice: "Cryptoasset was successfully updated." }
        format.json { render :show, status: :ok, location: @cryptoasset }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cryptoasset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cryptoassets/1 or /cryptoassets/1.json
  def destroy
    @cryptoasset.destroy

    respond_to do |format|
      format.html { redirect_to cryptoassets_url, notice: "Cryptoasset was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cryptoasset
      @cryptoasset = Cryptoasset.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cryptoasset_params
      params.require(:cryptoasset).permit(:name, :description, :ticker)
    end
end
