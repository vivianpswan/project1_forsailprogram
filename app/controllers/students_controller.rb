class StudentsController < ApplicationController

def index
    @students = Student.all
    end

def new
    @student = Student.new
   end

def create
    student = Student.create student_params
    @current_tutor.students << student # Association

    redirect_to students_path(student.id)
end

def edit
    @student = Student.find params[:id]
  end

def update
    student = Student.find params[:id]
    student.update student_params
    redirect_to students.path(student.id)
end

def show
    @student = Student.find params[:id]
    end

def destroy
    student = Student.find params[:id]
    student.destroy
    redirect_to students_path
end

private
def student_params
  params.require(:student).permit(:name, :image, :age, :stage, :tutor_id)
end

end