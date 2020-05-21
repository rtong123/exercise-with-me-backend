class ExercisesController < ApplicationController
  def create
    # create an exercise, attach it with routine id.
    @exercise = Exercise.new(exercise_params)
    @exercise.save
    render json: @exercise
  end

  def index
    @exercises = Exercise.all
    # fetch request for all exercises
  end


  def show
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)
    render json: @exercise
  end

  def destroy

  end

  private
  def  exercise_params
    params.require(:exercise).permit(:name,:type_of_exercise,:equipment,:routine_id, :reps, :sets)
  end
  # permit these attributes
end
