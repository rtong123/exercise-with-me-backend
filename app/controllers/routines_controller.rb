class RoutinesController < ApplicationController

  def create
  end

  def index
    @routines = Routine.all
    render json: @routines
    # fetch request for all routines
  end


  def show
  end

  def destroy
  end

  private

  def  routine_params
    params.require(:routine).permit(:title,:start_date,:days,:body_weight)
  end
  # permit these attributes

end
