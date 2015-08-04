class PeopleController < ApplicationController
  def index
    render json: Subject.all
  end

  def show
    render json: Subject.find(params[:id])
  end


  private
  def subject_params
    params.require(:subject).permit(:subject)
  end
end
