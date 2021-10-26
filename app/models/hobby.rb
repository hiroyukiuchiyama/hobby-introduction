class Hobby < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :body, {length: {maximum: 700}}

  belongs_to :user
end
