require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  it 'should have email' do
    expect(user.email.present?).to be_truthy
  end

  it 'should have first_name' do
    expect(user.first_name.present?).to be_truthy
  end

  it 'should have last_name' do
    expect(user.last_name.present?).to be_truthy
  end

  describe "role" do
    it 'should be user' do
      expect(user.role).to eq("user")
    end

    let(:admin) { create(:user, role: 1) }
    it 'should be admin' do
      expect(admin.role).to eq("admin")
    end
  end
end
