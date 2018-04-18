class Lesson2AsController < ApplicationController
  before_action :set_lesson2_a, only: [:show, :edit, :update, :destroy]

  # GET /lesson2_as
  # GET /lesson2_as.json
  def index
    @lesson2_as = Lesson2A.all
    @bobo = "bobo ja"
  end

  # GET /lesson2_as/1
  # GET /lesson2_as/1.json
  def show
  end

  # GET /lesson2_as/new
  def new
    @lesson2_a = Lesson2A.new
  end

  # GET /lesson2_as/1/edit
  def edit
  end

  # POST /lesson2_as
  # POST /lesson2_as.json
  def create
    @lesson2_a = Lesson2A.new(lesson2_a_params)

    respond_to do |format|
      if @lesson2_a.save
        format.html { redirect_to @lesson2_a, notice: 'Lesson2 a was successfully created.' }
        format.json { render :show, status: :created, location: @lesson2_a }
      else
        format.html { render :new }
        format.json { render json: @lesson2_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson2_as/1
  # PATCH/PUT /lesson2_as/1.json
  def update
    respond_to do |format|
      if @lesson2_a.update(lesson2_a_params)
        format.html { redirect_to @lesson2_a, notice: 'Lesson2 a was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson2_a }
      else
        format.html { render :edit }
        format.json { render json: @lesson2_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson2_as/1
  # DELETE /lesson2_as/1.json
  def destroy
    @lesson2_a.destroy
    respond_to do |format|
      format.html { redirect_to lesson2_as_url, notice: 'Lesson2 a was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson2_a
      @lesson2_a = Lesson2A.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson2_a_params
      params.require(:lesson2_a).permit(:string_test, :datetime_test, :integer_test, :boolean_test, :boolean)
    end
end
