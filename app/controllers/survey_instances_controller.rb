class SurveyInstancesController < ApplicationController
  before_action :set_survey_instance, only: [:show, :edit, :update, :destroy]

  # GET /survey_instances
  # GET /survey_instances.json
  def index
    @survey_instances = SurveyInstance.all
  end

  # GET /survey_instances/1
  # GET /survey_instances/1.json
  def show
    @section_id = params[:section].to_i || 0
    # raise @section_id.to_s
    @survey = @survey_instance.survey
    
  end

  # GET /survey_instances/new
  def new
    @survey_instance = SurveyInstance.new
  end

  # GET /survey_instances/1/edit
  def edit
  end

  # POST /survey_instances
  # POST /survey_instances.json
  def create
    @survey_instance = SurveyInstance.new(survey_instance_params)

    respond_to do |format|
      if @survey_instance.save
        format.html { redirect_to @survey_instance, notice: 'Survey instance was successfully created.' }
        format.json { render :show, status: :created, location: @survey_instance }
      else
        format.html { render :new }
        format.json { render json: @survey_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_instances/1
  # PATCH/PUT /survey_instances/1.json
  def update
    respond_to do |format|
      if @survey_instance.update(survey_instance_params)
        format.html { redirect_to @survey_instance, notice: 'Survey instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_instance }
      else
        format.html { render :edit }
        format.json { render json: @survey_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_instances/1
  # DELETE /survey_instances/1.json
  def destroy
    @survey_instance.destroy
    respond_to do |format|
      format.html { redirect_to survey_instances_url, notice: 'Survey instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_instance
      @survey_instance = SurveyInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_instance_params
      params.require(:survey_instance).permit(:patient_id, :survey_id)
    end
end
