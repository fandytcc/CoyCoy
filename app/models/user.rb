class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # our stuff
  has_one :profile
  has_one :cart

  def full_name
    return profile.full_name if profile?

    email
  end

  def profile?
    profile.present? && profile.persisted?
  end
end
