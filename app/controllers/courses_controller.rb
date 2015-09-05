class CoursesController < ApplicationController
 before_action :set_course, only: [ :show, :edit, :update, :destroy]

  def index
    @courses = Course.all
    # @course1= course.find(1)
    # @course2= course.find(2)
    # @course3= course.find(3)
  end

  def show
    # @ingredient = Ingredient.new
    @chapter = Chapter.new

  end

  def new
    # NEXT WEEK
    @chapter = Chapter.new
    @course = Course.new
    # @ingredient = Ingredient.new
  end

  def create
    @course = Course.create(course_params)
    redirect_to courses_path
    # @course.user_id = current_user.id
    # if @course.save
    # @ingredient = Ingredient.new(name: ingredient_params[:name], course_id: course.last.id)
    # @ingredient.save
    #   redirect_to course_path(@course)
    # else
    #   redirect_to new_course_path(@course)
    # end
  end

  def edit
    # NEXT WEEK
    @course = Course.find(params[:id])
  end

  def update
    # NEXT WEEK
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to courses_path
  end

  def destroy
    @course.destroy
    redirect_to edit_course_path
  end

  private
  def set_course
  @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :description, :price, :fichier_video, :picture )
    # :user_id current_user
  end

  # def ingredient_params
  #   params[:course].require(:ingredient).permit(:name)
  # end

end
