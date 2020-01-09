require 'rails_helper'

RSpec.describe Home, type: :model do
  let(:home) { FactoryBot.build(:home) }

  describe 'Associations' do
    it { should have_many :rents}
    it { should belong_to :owner }
  end

  describe 'Validations' do
    it { should validate_presence_of :status }
    it { should validate_presence_of :price }
    it { should validate_presence_of :extra_services }
    it { should validate_presence_of :total_amount }
    it { should validate_presence_of :home_features }
    it { should validate_presence_of :location }
  end

  context "valid home" do
    it { expect(home).to be_valid }

    it 'save successful' do
      expect(home.save).to be(true)
    end
  end
end
