class CoursePagesController < ApplicationController
  
  before_action :set_course, only: [:show]
  def initialize
    @options = {}
    @options[:include] = [:faqs]
  end
  
  
  def show
    render :json => CoursePageSerializer.new(@course_page, @options).serializable_hash
  end
  
  private 
    def set_course
      @course_page = CoursePage.find_by_slug(params[:id])
    end
end
