class EnrollmentsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        current_course.enrollments.create(course: current_course)
        redirect_to course_path(current_course)
    end
    
    private
    def current_course
    @current_course ||= Course.find(course_params[course_id])
    end
end
