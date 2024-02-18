class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin]

  after_initialize :set_default_role, if: :new_record?

  has_many :assignments

  def set_default_role
    self.role ||= :user
  end
  
  def full_name
    first_name + last_name
  end
end
