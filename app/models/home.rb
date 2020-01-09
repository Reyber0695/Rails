class Home
  include Mongoid::Document
  include Mongoid::Enum

  enum :status, [:in_progress, :published, :rented]

  before_validation :set_total_amount

  field :price, type: Float
  field :extra_services, type: Float
  field :total_amount, type: Float
  field :home_features, type: Hash, default:
    {
      garden: false, 
      furnished: false,
      gym: false
    }
  field :location, type: Array, default: [
    0.00,
    0.00
  ]
  field :master_home_id, type: String , default: nil

  #has_many :rents
  belongs_to :owner

  validates :status, presence: true
  validates :price, presence: true
  validates :extra_services, presence: true
  validates :total_amount, presence: true
  validates :home_features, presence: true
  validates :location, presence: true

  private

  def set_total_amount
    self.total_amount = price + extra_services
  end
end


