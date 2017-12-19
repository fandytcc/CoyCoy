require 'rails_helper'

RSpec.describe Cart, type: :model do
  it { is_expected.to belong_to(:user) }
  describe 'association with list_items' do
    it { is_expected.to have_many(:list_items) }
    it { is_expected.to have_many(:carted_products) }
  end
end
