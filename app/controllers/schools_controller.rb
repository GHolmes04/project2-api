class SchoolsController < ApplicationController

  def index
    render json: School.all
  end

  def show
    render json: School.find(params[:id])
  end

  def create
    school = School.create(school_params)
    if school.save
      render json: school, status: :created
    else
      render json: school.errors, status: :unprocessable_entity
    end
  end

  def update
    school = School.find(params[:id])
    if school.update(school_params)
      school.save
      render json: school
    else
      render json: school.errors, status: :unprocessable_entity
    end
  end

  def destroy
    school = School.find(params[:id])
    school.destroy
    head :ok
  end

  private
  def school_params
    params.require(:school).permit(:name, :grade_level)
  end
end
