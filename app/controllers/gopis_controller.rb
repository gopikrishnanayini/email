class GopisController < ApplicationController
  before_action :set_gopi, only: [:show, :edit, :update, :destroy]

  # GET /gopis
  # GET /gopis.json
  def index
    @gopis = Gopi.all
  end

  # GET /gopis/1
  # GET /gopis/1.json
  def show
  end

  # GET /gopis/new
  def new
    @gopi = Gopi.new
  end

  # GET /gopis/1/edit
  def edit
  end

  # POST /gopis
  # POST /gopis.json
  def create
    @gopi = Gopi.new(gopi_params)

    respond_to do |format|
      if @gopi.save
        ExampleMailer.sample_email(@gopi).deliver
        format.html { redirect_to @gopi, notice: 'Gopi was successfully created.' }
        format.json { render :show, status: :created, location: @gopi }
      else
        format.html { render :new }
        format.json { render json: @gopi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gopis/1
  # PATCH/PUT /gopis/1.json
  def update
    respond_to do |format|
      if @gopi.update(gopi_params)
        format.html { redirect_to @gopi, notice: 'Gopi was successfully updated.' }
        format.json { render :show, status: :ok, location: @gopi }
      else
        format.html { render :edit }
        format.json { render json: @gopi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gopis/1
  # DELETE /gopis/1.json
  def destroy
    @gopi.destroy
    respond_to do |format|
      format.html { redirect_to gopis_url, notice: 'Gopi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gopi
      @gopi = Gopi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gopi_params
      params.require(:gopi).permit(:name, :email)
    end
end
