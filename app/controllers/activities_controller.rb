class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show edit update destroy]
  def index
    @activities = Activity.all
  end

  def show; end

  def new
    @activity = Activity.new
  end

  def edit; end

  def create
    current_user = User.find(1)
    @activity = current_user.activities.build(activity_params)
    respond_to do |format|
      if @activity.save
        format.html { redirect_to activity_url(@activity), notice: 'Activity was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to activity_url(@activity), notice: 'Activity was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @activity.destroy

    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
    end
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :data_name, :action_type, :status, :includes_duration, :includes_content)
  end
end


