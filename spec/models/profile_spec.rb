require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "validations" do
      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
  end

  describe "association with user" do
    it { is_expected.to belong_to(:user) }
      # let(:user) { create :user }
      #
      # it "belongs to a user" do
      #   profile = user.profile.build(first_name: "Tom", last_name: "Lee")
      #
      #   expect(profile.user).to eq(user)
      # end
    end
end
