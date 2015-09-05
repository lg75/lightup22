class ChaptersController < ApplicationController
  before_action :set_course
  def index
  end

  def show
  end

  def new
  end

  def create
    @chapter = Chapter.new(chapter_params)
    @chapter.course = @course
    if @chapter.save
      redirect_to course_path(@course)
    else
      render "courses/show"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_course
  @course = Course.find(params[:course_id])
  end

  def chapter_params
    params.require(:chapter).permit(:name)
    # :user_id current_user
  end

end
