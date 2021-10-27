class User < ApplicationRecord
  validates :name, presence: true
  validates :name,length: { in: 2..20 }
  validates :name, uniqueness: true
  validates :introduction, length: { maximum: 150 }
  validates :name, presence: true
  validates :name,length: { in: 2..20 }
  validates :name, uniqueness: true
  validates :introduction, length: { maximum: 50 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attachment :profile_image
  
  has_many :hobby
  
  
end
