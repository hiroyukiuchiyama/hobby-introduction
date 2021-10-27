class Hobby < ApplicationRecord
  enum rate: {book: 0, cook: 1, trip:2 }
  
  validates :title, presence: true
  validates :body, presence: true
  validates :body, {length: {maximum: 700}}

  belongs_to :user
end
