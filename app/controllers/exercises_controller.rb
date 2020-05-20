class ExercisesController < ApplicationController
  def create
    # create an exercise, attach it with routine id.
  end

  def index

    # fetch request for all exercises
  end


  def show

  end

  def destroy

  end

  private
  def  exercise_params
    params.require(:exercise).permit(:name,:type_of_exercise,:equipment,:routine_id, :reps, :sets)
  end
  # permit these attributes
end
