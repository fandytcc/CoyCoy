require 'rails_helper'

RSpec.describe User, type: :model do
  describe "association with profile" do
    let(:user) { create :user }
    # let!(:profile) { create :profile, user: user }

    it "belongs to a profile" do
      profile = user.profile.build(first_name: "Tom")

      expect(profile.user).to eq(user)
    end
  end
  # it "deletes associated rooms" do
  #   expect { user.destroy }.to change(Room, :count).by(-1)
  # end
end
