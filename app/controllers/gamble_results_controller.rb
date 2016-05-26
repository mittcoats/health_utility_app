class GambleResultsController < ApplicationController
  before_action :set_gamble_result, only: [:show, :edit, :update, :destroy]

  # GET /gamble_results
  # GET /gamble_results.json
  def index
    @gamble_results = GambleResult.all
  end

  # GET /gamble_results/1
  # GET /gamble_results/1.json
  def show
  end

  # GET /gamble_results/new
  def new
    @gamble_result = GambleResult.new
  end

  # GET /gamble_results/1/edit
  def edit
  end

  # POST /gamble_results
  # POST /gamble_results.json
  def create
    
    # raise params.to_s
    # {"final_good_outcome_percent"=>"100", "gamble_id"=>"1", "controller"=>"gamble_results", "action"=>"create", "format"=>"json"}
    @gamble_result = GambleResult.new
    @gamble_result.final_good_outcome_percent = params['final_good_outcome_percent']
    @gamble_result.gamble_id = params['gamble_id']
    @gamble_result.survey_instance_id = params['survey_instance_id'].to_i
    # raise @gamble_result.to_s
    
    respond_to do |format|
      if @gamble_result.save
        format.html { redirect_to @gamble_result, notice: 'Gamble result was successfully created.' }
        format.json { render :show, status: :created, location: @gamble_result }
      else
        format.html { render :new }
        format.json { render json: @gamble_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamble_results/1
  # PATCH/PUT /gamble_results/1.json
  def update
    respond_to do |format|
      if @gamble_result.update(gamble_result_params)
        format.html { redirect_to @gamble_result, notice: 'Gamble result was successfully updated.' }
        format.json { render :show, status: :ok, location: @gamble_result }
      else
        format.html { render :edit }
        format.json { render json: @gamble_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamble_results/1
  # DELETE /gamble_results/1.json
  def destroy
    @gamble_result.destroy
    respond_to do |format|
      format.html { redirect_to gamble_results_url, notice: 'Gamble result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamble_result
      @gamble_result = GambleResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gamble_result_params
      params.require(:gamble_result).permit('final_good_outcome_percent', 'gamble_id')
    end
end
