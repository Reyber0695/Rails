class Home
  include Mongoid::Document
  field :price, type: Float
  field :extra_ervice, type: Float
  field :total_amount, type: Float
  field :home_features, type: Hash
  field :garden, type: Boolean
  field :furnished, type: Boolean
  field :gym, type: Boolean

  has_many :rents
  belongs_to :user
  belongs_to :owner
end
