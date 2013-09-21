class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, uniqueness: {case_sensitive: false}, length: {in: 6..25, too_long: "%{count} characters minimum allowed",too_short: "%{count} characters maximum allowed"}
  validates :password, presence: true, length: {in: 6..25, too_long: "%{count} characters minimum allowed",too_short: "%{count} characters maximum allowed"},format: {with: /\d/, message: "Password must contain at least one Number"}
  has_one :profile , dependent: :destroy
  accepts_nested_attributes_for :profile
  has_one :game    , dependent: :destroy
  validates_associated :profile
  validates_associated :game

end
