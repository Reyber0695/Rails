require 'rails_helper'

RSpec.describe Owner, type: :model do
  let(:owner) { FactoryBot.build(:owner) }

  describe 'Associations' do
    it { should have_many :homes }
    it { should belong_to :user}
  end

  describe 'Validations' do
    it { should validate_presence_of :curp }
    it { should validate_presence_of :registered_in_srpago }
  end

  context "valid owner" do
    it { expect(owner).to be_valid }

    it 'save successful' do
      expect(owner.save).to be(true)
    end
  end
end
