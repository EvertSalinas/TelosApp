class ActivityInstancesController < ApplicationController
  before_action :set_activity_instance, only: [:show, :edit, :update, :destroy]

  # GET /activity_instances
  # GET /activity_instances.json
  def index
    @activity_instances = ActivityInstance.all
  end

  # GET /activity_instances/1
  # GET /activity_instances/1.json
  def show
  end

  # GET /activity_instances/new
  def new
    @activity_instance = ActivityInstance.new
  end

  # GET /activity_instances/1/edit
  def edit
  end

  # POST /activity_instances
  # POST /activity_instances.json
  def create
    @activity_instance = ActivityInstance.new(activity_instance_params)

    respond_to do |format|
      if @activity_instance.save
        format.html { redirect_to :root, notice: 'Activity instance was successfully created.' }
        format.json { render :show, status: :created, location: @activity_instance }
      else
        format.html { render :new }
        format.json { render json: @activity_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_instances/1
  # PATCH/PUT /activity_instances/1.json
  def update
    respond_to do |format|
      if @activity_instance.update(activity_instance_params)
        format.html { redirect_to @activity_instance, notice: 'Activity instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_instance }
      else
        format.html { render :edit }
        format.json { render json: @activity_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_instances/1
  # DELETE /activity_instances/1.json
  def destroy
    @activity_instance.destroy
    respond_to do |format|
      format.html { redirect_to activity_instances_url, notice: 'Activity instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_instance
      @activity_instance = ActivityInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_instance_params
      params.require(:activity_instance).permit(:activity_id, :date, :amount, :description)
    end
end
