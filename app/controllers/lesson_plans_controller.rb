class LessonPlansController < ApplicationController
  def index
    render json: LessonPlan.all
  end

  def show
    render json: LessonPlan.find(params[:id])
  end

  def create
    lesson_plan = LessonPlan.create(lesson_plan_params)
    if lesson_plan.save
      head :created, location: lesson_plan
    else
      render json: lesson_plan.errors, status: :unprocessable_entity
    end
  end

  def update
    lesson_plan = LessonPlan.find(params[:id])
    if lesson_plan.update(lesson_plan_params)
      lesson_plan.save
      render json: lesson_plan
    else
      render json: lesson_plan.errors, status: :unprocessable_entity
    end
  end

  def destroy
    lesson_plan = LessonPlan.find(params[:id])
    lesson_plan.destroy
  end

  private
  def lesson_plan_params
    params.require(:credentails).permit(:id, :title, :target_grade_level, :teacher_id, :subject_id)
  end
end
