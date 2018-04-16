class CoursePagesController < ApplicationController
  
  before_action :set_course, only: [:show]
  def show
    render :json => @course_page
  end
  
  private 
    def set_course
      @course_page = CoursePage.find_by_slug(params[:id])
    end
end
