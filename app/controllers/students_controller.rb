class StudentsController < ApplicationController
  
  
  def new
    @schools = School.all
    @student = Student.new
  end

  def create
    student = Student.create(student_params)
    redirect_to student_path(student)
  end


  def show
    @student = Student.find(params[:id])
    @school = @student.school
  end

  
  def edit
  end

  def delete
    @student = Student.find(params[:id]) #define student to delete
    school = @student.school.id
    @student.destroy #delete student
    # redirect_to "/schools/#{school}"
    redirect_to school_path(school)
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :school_id)
  end
end
