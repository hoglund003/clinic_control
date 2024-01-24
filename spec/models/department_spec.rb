require 'rails_helper'

RSpec.describe Department, type: :model do
  let(:department){ create(:department) }
  it 'should have name' do
    expect(department.present?).to be_truthy
  end
end
