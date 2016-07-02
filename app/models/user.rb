class User < ActiveRecord::Base

  has_many :surveys, foreign_key: :creator_id
  has_many :questions, through: :surveys

  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: true, on: :create # allows duplicate for updating
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
