class TeachersController < ApplicationController
	helper_method :sort_column, :sort_direction
  def index
  	@teachers = Teacher.order(sort_column + " " + sort_direction)
  	# @teachers = Teacher.order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])
  	#@teachers = Teacher.order(sort_column('Teacher', 'teacher_id') + " " + sort_direction).limit(per_page).offset(paginate_offset)
  end

  def show
  end

  def new
  	@teacher = Teacher.new
  end

  def create
 
     @teacher = Teacher.new
     @teacher.teacher_id = (params[:teacher][:teacher_id]).to_i
     @teacher.teacher_name = (params[:teacher][:teacher_name])
     @teacher.school_name = (params[:teacher][:school_name])
     @teacher.school_year = (params[:teacher][:school_year]).to_i
 
     if @teacher.save
 
       flash[:notice] = "Teacher was saved successfully."
       redirect_to @teacher
     else
 
       flash.now[:alert] = "There was an error saving the post. Please try again."
       render :new
     end
   end

  def edit
  end


end

private

  def sort_column
    Teacher.column_names.include?(params[:sort]) ? params[:sort] : "teacher_id"
    #class_name.column_names.include?(params[:sort]) ? params[:sort] : attribute_name
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
