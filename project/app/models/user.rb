class User < ApplicationRecord
  has_many :comment
  has_many :follow
  has_many :innapropiate
  has_many :post
  has_many :vote
  has_one :profile

  validates :name, presence: true , format: { with: /\A[a-zA-Z]+\z/}
  validates :password, presence: true
  validates :email, presence: true , format: { with: URI::MailTo::EMAIL_REGEXP }
end
