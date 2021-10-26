class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
    @training = Training.new
  end

  def create
    Training.create(training_parameter)
    redirect_to trainings_path
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
    redirect_to trainings_path, notice: "削除しました"
  end

  def update
    @training = Training.find(params[:id])
    if @training.update(training_parameter)
      redirect_to trainings_path, notice: "編集しました"
    end
  end

  def training_parameter
    params.require(:training).permit(:training_type, :weight, :rep, :set, :start_time)
  end
end
