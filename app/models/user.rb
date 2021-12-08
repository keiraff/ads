class User < ApplicationRecord

  validates :name,  presence: true, length: { maximum: 50 }
  validates :surname,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\(?\+[0-9]{1,3}\)? ?-?[0-9]{1,3} ?-?[0-9]{3,5} ?-?[0-9]{4}( ?-?[0-9]{3})? ?(\w{1,10}\s?\d{1,6})?/
  validates :email, presence: true, length: { minimum: 10 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  validates :phone, presence: true, length: { maximum: 15 }, format: { with: VALID_PHONE_REGEX }, uniqueness: true
end
