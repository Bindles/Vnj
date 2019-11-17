class EjuicesController < ApplicationController
  before_action :set_ejuice, only: [:show, :edit, :update, :destroy]

  # GET /ejuices
  # GET /ejuices.json
  def index
    @ejuices = Ejuice.all
  end

  # GET /ejuices/1
  # GET /ejuices/1.json
  def show
  end

  # GET /ejuices/new
  def new
    @ejuice = Ejuice.new
  end

  # GET /ejuices/1/edit
  def edit
  end

  # POST /ejuices
  # POST /ejuices.json
  def create
    @ejuice = Ejuice.new(ejuice_params)

    respond_to do |format|
      if @ejuice.save
        format.html { redirect_to @ejuice, notice: 'Ejuice was successfully created.' }
        format.json { render :show, status: :created, location: @ejuice }
      else
        format.html { render :new }
        format.json { render json: @ejuice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ejuices/1
  # PATCH/PUT /ejuices/1.json
  def update
    respond_to do |format|
      if @ejuice.update(ejuice_params)
        format.html { redirect_to @ejuice, notice: 'Ejuice was successfully updated.' }
        format.json { render :show, status: :ok, location: @ejuice }
      else
        format.html { render :edit }
        format.json { render json: @ejuice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ejuices/1
  # DELETE /ejuices/1.json
  def destroy
    @ejuice.destroy
    respond_to do |format|
      format.html { redirect_to ejuices_url, notice: 'Ejuice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ejuice
      @ejuice = Ejuice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ejuice_params
      params.require(:ejuice).permit(:name, :fp, :flavor, :desc, :rating, :image)
    end
end
