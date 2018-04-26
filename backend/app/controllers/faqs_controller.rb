class FaqsController < ApplicationController
    before_action :set_course_page, only: [:index]
    
    def index
        if @course_page
            @faqs = Faq.where(:course_page => @course_page)
            render :json => @faqs 
            # FaqSerializer.new(@faqs).serializable_hash
        else
            @faqs = Faq.all
            render :json => @faqs
            #  FaqSerializer.new(@faqs).serializable_hash
        end
    end

    private
    def set_course_page
        if params[:course_page_slug]
            @course_page = CoursePage.find_by_slug(params[:course_page_slug])
        end
    end

end