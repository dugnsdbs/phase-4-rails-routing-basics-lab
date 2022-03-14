class StudentsController < ApplicationController
  def index 
    render json: Student.all
  end
  
  def grades 
    render json: Student.all.order(:grade).reverse
  end

  def highest_grade
    render json: Student.all.max_by{|k,v| v}
  end



end
