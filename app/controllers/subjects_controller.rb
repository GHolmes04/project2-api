class SubjectsController< ApplicationController

  def index
    subject = Subject.all

    render json: subject
  end

  # GET /users/1
  # GET /users/1.json
  def show
    subject= Subject.find(params[:id])

    render json: subject
  end


  private
  def subject_params
    params.require(:subject).permit(:id, :subject, :lesson_plan_id)
  end
end
