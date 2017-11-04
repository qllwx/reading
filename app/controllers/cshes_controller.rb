class CshesController < ApplicationController
  before_action :set_csh, only: [:show, :edit, :update, :destroy]

  # GET /cshes
  # GET /cshes.json
  def index
    #@cshes = Csh.all
    @cshes=Csh.paginate(page:params[:page],per_page:15)
  end

  # GET /cshes/1
  # GET /cshes/1.json
  def show
  end

  # GET /cshes/new
  def new
    @csh = Csh.new
  end

  # GET /cshes/1/edit
  def edit
  end

  # POST /cshes
  # POST /cshes.json
  def create
    @csh = Csh.new(csh_params)

    respond_to do |format|
      if @csh.save
        format.html { redirect_to @csh, notice: 'Csh was successfully created.' }
        format.json { render :show, status: :created, location: @csh }
      else
        format.html { render :new }
        format.json { render json: @csh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cshes/1
  # PATCH/PUT /cshes/1.json
  def update
    respond_to do |format|
      if @csh.update(csh_params)
        format.html { redirect_to @csh, notice: 'Csh was successfully updated.' }
        format.json { render :show, status: :ok, location: @csh }
      else
        format.html { render :edit }
        format.json { render json: @csh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cshes/1
  # DELETE /cshes/1.json
  def destroy
    @csh.destroy
    respond_to do |format|
      format.html { redirect_to cshes_url, notice: 'Csh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csh
      @csh = Csh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csh_params
      params.require(:csh).permit(:area, :school, :sit_no, :grade, :c_name, :s_no, :name, :sex, :score, :pj, :period)
    end
end
