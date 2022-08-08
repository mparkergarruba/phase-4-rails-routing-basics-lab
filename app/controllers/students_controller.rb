class StudentsController < ApplicationController
    
    def index
        ss = Student.all
        render json: ss
    end

    def grades
        sg = Student.all.order(:grade).reverse()
        render json: sg
    end

    def highest_grade
        hg = Student.all.order(:grade).last
        render json: hg
    end
end
