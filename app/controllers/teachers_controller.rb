class TeachersController < ApplicationController

  def index
    render json: Teacher.all
  end

  def show
    render json: Teacher.find(params[:id])
  end

  def create
    teacher = Teacher.new(teacher_params)
    # teacher.user = current_user
    if teacher.save
      render json: teacher, status: :created
    else
      render json: teacher.errors, status: :unprocessable_entity
    end
  end

  def update
    teacher = Teacher.find(params[:id])
    if teacher.update(teacher_params)
      render json: teacher
    else
      render json: teacher.errors, status: :unprocessable_entity
    end
  end

  def destroy
    teacher = Teacher.find(params[:id])
    teacher.destroy
    head :ok
  end

  private
    def teacher_params
    params.require(:teacher).permit(:username, :school_id, :user_id)
    end
  end

