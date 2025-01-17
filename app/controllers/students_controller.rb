class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :update, :edit]
    def new
         @student = Student.new
       end
     
       def create
         @student = Student.create(allowed_params)
         redirect_to student_path(@student)
         #redirect_to student_path
       end
     
       def show
       end
     
       def edit
       end
     
       def update
        @student.update(allowed_params)
        redirect_to student_path(@student)
       end

     
     
    private
        def find_student
         @student = Student.find(params[:id])
       end
       def allowed_params
         params.require(:student).permit!
       end
     
end
