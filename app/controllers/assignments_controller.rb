class AssignmentsController < ApplicationController
  def week
    @departments = Department.all
    @week_range = Date.today.beginning_of_week..Date.today.end_of_week

    unless params[:week].present?
      @current_date = Date.today
      @week_range = @current_date.beginning_of_week..@current_date.end_of_week
    end
  end
end
