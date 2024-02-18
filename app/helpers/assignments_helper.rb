module AssignmentsHelper
  def day_name(date)
    date.strftime('%A')
  end

  def assignments_at_date(assignments, date)
    assignments.where(time_at: date.all_day)
  end
end
