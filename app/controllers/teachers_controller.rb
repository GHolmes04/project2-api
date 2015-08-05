class TeachersController < ApplicationController
  def index
    render json: Teacher.all
  end

  def show
    render json: Teacher.find(params[:id])
  end

  def create
    teacher = Teacher.create(teacher_params)
    if teacher.save
      head :created, location: teacher
    else
      render json: teacher.errors, status: :unprocessable_entity
    end
  end

  def update
    teacher = Teacher.find(params[:id])
    if teacher.update(teacher_params)
      teacher.save
      render json: teacher
    else
      render json: teacher.errors, status: :unprocessable_entity
    end
  end

  def destroy
    teacher = Teacher.find(params[:id])
    teacher.destroy
  end

  private
  def teacher_params
    params.require(:teacher).permit(:id, :username, :lesson_plan_id, :school_id)
  end
end
