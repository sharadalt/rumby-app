class TeachersController < ApplicationController

  before_action :set_teacher, only: %i[ show edit update destroy ]
  helper_method :sort_column, :sort_direction

  # GET /teachers or /teachers.json
  def index
    #@teachers = Teacher.order(sort_column + " " + sort_direction).paginate(params[:page]).per_page(15)
    #@teachers = Teacher.order(sort_column + " " + sort_direction).paginate(params[:page]).per_page(15)
  
    @teachers = Teacher.order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])
  end

  # GET /teachers/1 or /teachers/1.json
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
    @teacher.schools.new
    @teacher.skool_years.new
  end

  # GET /teachers/1/edit
  def edit
  end

  # POST /teachers or /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)

    respond_to do |format|
      if @teacher.save
        
        @teacher.teacher_id = (@teacher.id).to_s # teacher id object is assigned to teacher's teacher_id field

        #all skool_years' years are appended to teachers school_year attribute
        if(@teacher.skool_years)
           @teacher.school_year = ""
           @teacher.skool_years.each {|yr| @teacher.school_year << yr.year << " ,";}
           @teacher.save
           puts "skool_yrs = #{@teacher.skool_years.count}"
           #puts "skool_yr = #{@teacher.skool_years.first.year}"
        end
        
        #all schools's school_names are appended to teachers school_name attribute
        if(@teacher.schools)
           @teacher.school_name = ""
           @teacher.schools.each {|sk| @teacher.school_name << sk.school_name << " ,";}
           @teacher.save
           puts "schools = #{@teacher.schools.count}"
           #puts "skool_yr = #{@teacher.skool_years.first.year}"
        end

        format.html { redirect_to teacher_url(@teacher), notice: "Teacher was successfully created." }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers/1 or /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to teacher_url(@teacher), notice: "Teacher was successfully updated." }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1 or /teachers/1.json
  def destroy
    @teacher.destroy

    respond_to do |format|
      format.html { redirect_to teachers_url, notice: "Teacher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_params
      params.require(:teacher).permit(:teacher_id, :teacher_name, schools_attributes: [:id, :school_name, :_destroy], skool_years_attributes: [:id, :year,:_destroy])
      #params.require(:teacher).permit(:teacher_id, :teacher_name, [school_ids: []], skool_years_attributes: [:id, :year,:_destroy])
    end

    def sort_column
    Teacher.column_names.include?(params[:sort]) ? params[:sort] : "teacher_id"
    #class_name.column_names.include?(params[:sort]) ? params[:sort] : attribute_name
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
