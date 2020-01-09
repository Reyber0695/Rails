class User
  include Mongoid::Document
  
  field :email, type: String
  field :name, type: String
  field :last_name, type: String
  field :mobile_phone, type: String
  field :work_place, type: String

  #has_many :rents, class_name: "Rent"

  validates :email, presence: true
  validates :name, presence: true
  validates :last_name, presence: true
  validates :mobile_phone, presence: true
  validates :work_place, presence: true

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end
end
