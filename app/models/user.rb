class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :position, presence: true
  validates :profile, presence: true 
  validates :occupation, presence: true
  validates :name, presence: true
  has_many :prototypes, dependent: :destroy
  has_many :reactions, dependent: :destroy
end
