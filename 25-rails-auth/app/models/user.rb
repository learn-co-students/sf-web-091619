class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :host_parties, foreign_key: :guest_id, class_name: "Party"
  has_many :hosts, through: :host_parties, source: :host

  has_many(:guest_parties, foreign_key: :host_id, class_name: "Party")
  has_many :guests, through: :guest_parties, source: :guest
end
