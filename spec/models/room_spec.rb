require 'rails_helper'

RSpec.describe Room, type: :model do
  let(:room) { create(:room) }
  it 'should have name' do
    expect(room.name.present?).to be_truthy
  end

  it 'should have department' do
    expect(room.department).to be_instance_of(Department)
  end
end
