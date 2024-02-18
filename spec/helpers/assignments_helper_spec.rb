require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the AssignmentsHelper. For example:
#
# describe AssignmentsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe AssignmentsHelper, type: :helper do
  describe "assignments_at_date" do
    let(:room) { create(:room) }
    let(:assignment_1) { create(:assignment, time_at: Date.today, room: room) }
    let(:assignment_2) { create(:assignment, time_at: Date.today, room: room) }
    let(:assignment_3) { create(:assignment, time_at: Date.today - 1, room: room) }

    it "should return collection of assignments" do
      expect(assignments_at_date(room.assignments, Date.today)).to eq([assignment_1, assignment_2])
    end
  end
end
