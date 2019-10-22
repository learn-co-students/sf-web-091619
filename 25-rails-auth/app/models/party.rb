class Party < ApplicationRecord
  belongs_to :host, foreign_key: "host_id", class_name: "User"
  belongs_to :guest, foreign_key: "guest_id", class_name: "User"
end
