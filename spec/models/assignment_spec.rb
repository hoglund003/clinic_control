require 'rails_helper'

RSpec.describe Assignment, type: :model do
  let(:assignment) { create(:assignment) }
  it 'should have time' do
    expect(assignment.time_at).to be_instance_of(ActiveSupport::TimeWithZone)
  end
end
